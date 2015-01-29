class Table
  def initialize(rarity)
    @rarity = rarity
  end

  def build(file)
    hash = Hash.new
    File.open("data/#{@rarity}/#{file}.txt", "r") do |file|
      while (line = file.gets)
        range_start = file.gets.strip.to_i
        range_end   = file.gets.strip.to_i
        hash[range_start..range_end] = file.gets.strip
      end
    end
    return hash
  end

  def run
    hash = Hash.new
    hash[nil]                       = build("table")
    hash["Armor and Shields"]       = build("armorandshields")
    hash["Special armor"]           = build("specialarmor")
    hash["Special shield"]          = build("specialshield")
    hash["Specific armor"]          = build("specificarmor")
    hash["Specific shield"]         = build("specificshield")
    hash["Weapons"]                 = build("weapons")
    hash["Bane"]                    = build("bane")
    hash["Special melee weapon"]    = build("specialmeleeweapon")
    hash["Special ranged weapon"]   = build("specialrangedweapon")
    hash["Specific weapon"]         = build("specificweapon")
    hash["Slaying arrow"]           = build("slayingarrow")
    hash["Slaying arrow (greater)"] = build("slayingarrowgreater")
    hash["Potions"]                 = build("potions")
    hash["Rings"]                   = build("rings")
    hash["Rods"]                    = build("rods")
    hash["Scrolls"]                 = build("scrolls")
    hash["Staves"]                  = build("staves")
    hash["Wands"]                   = build("wands")
    hash["Wonder"]                  = build("wonder")
    hash["Wondrous Item"]           = build("wondrousitems")
    return hash
  end
end

class Runner
  def initialize(count, tables)
    @count  = count
    @tables = tables
  end

  def roll_die(sides)
    rand(1..sides)
  end

  def choose_from_table(table)
    die = roll_die(100)
    table.each do |range, choice|
      if range.include?(die)
        return choice
      end
    end
  end

  def build_items
    @count.times do
      build_item
    end
  end

  def build_item(table = nil, armor = nil, weapon = ["melee", "ranged"].sample)
    while @tables.include?(table)
      choice = choose_from_table(@tables[table])
      if choice.include?("armor")
        armor = "armor"
      elsif choice.include?("shield")
        armor = "shield"
      end
      puts choice
      if choice.include?("Roll again twice")
        2.times do
          build_item(table, armor, weapon)
        end
      elsif choice.include?("weapon ability")
        build_item(table, armor, weapon)
        build_item("Special #{weapon} weapon", armor, weapon)
      elsif choice.include?("Special ability")
        armor = build_item(table, armor, weapon)
        build_item("Special #{armor}", armor, weapon)
      end
      table = choice
    end
    puts
    return armor
  end
end

def ask_question(question, viable_answers)
  puts question
  puts viable_answers
  answer = gets.strip
  if !viable_answers.include?(answer)
    puts "Oops! Please try again."
    ask_question(question, viable_answers)
  end
  return answer
end

def set_parameters(parameters)
  parameters = Hash.new
  parameters["rarity"] = ask_question("Please choose what category of tables you would like your magical items to choose from:", ["minor", "medium", "major"])
  puts
  parameters["type"] = ask_question("Would you like to choose a range or a specific number of items?", ["range", "number"])
  puts
  if parameters["type"] == "range"
    puts "Please choose the lower bound of your range."
    parameters["lower_bound"] = gets.strip.to_i
    puts "Please choose the upper bound of your range."
    parameters["upper_bound"] = gets.strip.to_i
  else
    puts "Please choose the number of items you'd like to generate."
    parameters["number"] = gets.strip.to_i
  end
  return parameters
end

tables    = { "minor"  => Table.new("minor").run,
              "medium" => Table.new("medium").run,
              "major"  => Table.new("major").run }
selection = ask_question("Would you like to run the default or choose parameters?", ["default", "parameters"])
puts
if selection == "default"
  Runner.new(rand(3..12), tables["minor"]).build_items
  Runner.new(rand(2..8),  tables["medium"]).build_items
  Runner.new(rand(1..4),  tables["major"]).build_items
else
  parameters = set_parameters(parameters)
  if parameters["type"] == "range"
    count = rand(parameters["lower_bound"]..parameters["upper_bound"])
  else
    count = parameters["number"]
  end
  Runner.new(count, tables[parameters["rarity"]]).build_items
end
