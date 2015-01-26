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
    hash["Armor and shields"]       = build("armorandshields")
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

minor   = Table.new("minor").run
medium  = Table.new("medium").run
major   = Table.new("major").run

class Runner
  def initialize(count, tables)
    @count  = count
    @tables = tables
  end
  
  def roll_die(sides)
    rand(1..sides)
  end
  
  def choose_from_table(table)
    die     = roll_die(100)
    choices = table.keys
    i       = 0
    while i < choices.size
      if choices[i].include?(die)
        return table[choices[i]]
      end
      i = i + 1
    end
  end

  def build_items(option)
    cycles = 0
    if option == "random"
      count = rand(@count)
    else
      count = @count
    end
    while cycles < count
      build_item
      cycles = cycles + 1
    end
  end

  def build_item
    choice  = choose_from_table(@tables[nil])
    puts "The category is #{choice}."
    item    = choose_from_table(@tables[choice])
    puts "The item is #{item}"

    case item
    when "Specific armor"
      build_specific_armor
    when "Specific shield"
      build_specific_shield
    when "Special ability and roll again"
      build_special_armor_ability
    when "Specific weapon"
      build_specific_weapon
    when "Special weapon ability and roll again"
      build_special_weapon_ability
    when "Wonder"
      build_rod
    end
    puts
  end

  def build_specific_armor
    puts choose_from_table(@tables["Specific armor"])
  end

  def build_specific_shield
    puts choose_from_table(@tables["Specific shield"])
  end
  
  def build_special_armor_ability
    armor = choose_from_table(@tables["Armor and shields"])
    puts armor
    if armor.include?("armor")
      spec = "Special armor"
    else 
      spec = "Special shield"
    end
    case armor
    when "Special ability and roll again"
      build_special_armor_ability
    when "Specific shield"
      build_specific_shield
    when "Specific armor"
      build_specific_armor
    end
    armor = choose_from_table(@tables[spec])
    puts armor
    if armor == "Roll again twice"
      puts choose_from_table(@tables[spec])
      puts choose_from_table(@tables[spec])
    end
  end

  def build_specific_weapon
    weapon = choose_from_table(@tables["Specific weapon"])
    if weapon == "Slaying arrow"
      puts choose_from_table(@tables["Slaying arrow"])
    end
    puts weapon
  end

  def build_special_weapon_ability
    weapon = choose_from_table(@tables["Weapons"])
    puts weapon
    coin_flip = roll_die(2)
    if coin_flip == 1
      spec = "Special melee weapon"
    else
      spec = "Special ranged weapon"
    end
    case weapon
    when "Special weapon ability and roll again"
      build_special_weapon_ability
    when "Specific weapon"
      build_specific_weapon
    end
    weapon = choose_from_table(@tables[spec])
    puts weapon
    case weapon
    when "Bane"
      puts choose_from_table(@tables["Bane"])
    when "Roll again twice"
      puts choose_from_table(@tables[spec])
      puts choose_from_table(@tables[spec])
    end
  end

  def build_rod
    puts choose_from_table(@tables["Wonder"])
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
    parameters["lower_bound"] = gets.strip
    puts "Please choose the upper bound of your range."
    parameters["upper_bound"] = gets.strip
  else
    puts "Please choose the number of items you'd like to generate."
    parameters["number"] = gets.strip
  end
  return parameters
end

selection = ask_question("Would you like to run the default or choose parameters?", ["default", "parameters"])
puts
if selection == "default"
  option = "random" 
  Runner.new(3..12, minor).build_items(option)
  Runner.new(2..8, medium).build_items(option)
  Runner.new(1..4, major).build_items(option)
else
  parameters = set_parameters(parameters)
  if parameters["type"] == "range"
    option = "random"
    lower_bound = parameters["lower_bound"].to_i
    upper_bound = parameters["upper_bound"].to_i
    case parameters["rarity"]
    when "minor"
      Runner.new(lower_bound..upper_bound, minor).build_items(option)
    when "medium"
      Runner.new(lower_bound..upper_bound, medium).build_items(option)
    when "major"
      Runner.new(lower_bound..upper_bound, major).build_items(option)
    end
  else
    option = "fixed"
    case parameters["rarity"]
    when "minor"
      Runner.new(parameters["number"].to_i, minor).build_items(option)
    when "medium"
      Runner.new(parameters["number"].to_i, medium).build_items(option)
    when "major"
      Runner.new(parameters["number"].to_i, major).build_items(option)
    end
  end
end
