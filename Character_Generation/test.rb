def rolls
  Array.new(4) { rand(1..6) }
end

def sum_rolls_and_subtract_lowest(rolls)
  rolls.inject(0) { |sum, roll| sum + roll } - rolls.min
end


def build_class 
  {
    "barbarian" => ["wisdom" , "intelligence", "charisma", "dexterity", "constitution", "strength"],
    "bard" => ["wisdom", "strength", "constitution", "intelligence", "dexterity", "charisma"],
    "cleric" => ["intelligence", "constitution", "dexterity", "strength", "charisma", "wisdom"],
    "druid" => ["constitution", "strength", "dexterity", "charisma", "intelligence", "wisdom"],
    "fighter" => ["charisma", "intelligence", "wisdom", "dexterity", "constitution", "strength"],
    "monk" => ["charisma", "intelligence", "constitution", "dexterity", "wisdom", "strength"],
    "paladin" => ["wisdom", "intelligence", "dexterity", "strength", "charisma", "constitution"],
    "ranger" => ["constitution", "charisma", "strength", "intelligence", "wisdom", "dexterity"],
    "rogue" => ["wisdom", "constitution", "strength", "intelligence", "charisma", "dexterity"],
    "sorcerer" => ["strength", "constitution", "wisdom", "intelligence", "dexterity", "charisma"],
    "wizard" => ["strength", "constitution", "charisma", "wisdom", "dexterity", "intelligence"]
  }
end

def assign_attributes(dnd_class, dnd_race, attributes)
  class_attributes = { }
  racial_modifiers = race_attribute_changes[dnd_race]
  if race_attribute_changes.include?(dnd_race)
    class_attributes["strength"] = attributes[build_class[dnd_class].index("strength")] + racial_modifiers["strength"]
    class_attributes["dexterity"] = attributes[build_class[dnd_class].index("dexterity")] + racial_modifiers["dexterity"]
    class_attributes["constitution"] = attributes[build_class[dnd_class].index("constitution")] + racial_modifiers["constitution"]
    class_attributes["intelligence"] = attributes[build_class[dnd_class].index("intelligence")] + racial_modifiers["intelligence"]
    class_attributes["wisdom"] = attributes[build_class[dnd_class].index("wisdom")] + racial_modifiers["wisdom"]
    class_attributes["charisma"] = attributes[build_class[dnd_class].index("charisma")] + racial_modifiers["charisma"]
  else
    class_attributes["strength"] = attributes[build_class[dnd_class].index("strength")]
    class_attributes["dexterity"] = attributes[build_class[dnd_class].index("dexterity")]
    class_attributes["constitution"] = attributes[build_class[dnd_class].index("constitution")]
    class_attributes["intelligence"] = attributes[build_class[dnd_class].index("intelligence")]
    class_attributes["wisdom"] = attributes[build_class[dnd_class].index("wisdom")]
    class_attributes["charisma"] = attributes[build_class[dnd_class].index("charisma")]
    if check_for_low(class_attributes)
      class_attributes[build_class[dnd_class][0]] = class_attributes[build_class[dnd_class][0]] + 2
    else
      class_attributes[build_class[dnd_class][5]] = class_attributes[build_class[dnd_class][5]] + 2
    end
  end
  return class_attributes
end

def check_for_low(class_attributes)
  check = false
  if class_attributes.values.min <= 6
    check = true
  end
  return check
end

def race_attribute_changes
  {
    "dwarf" => {
      "strength" => 0,
      "dexterity" => 0,
      "constitution" => 2,
      "intelligence" => 0,
      "wisdom" => 2,
      "charisma" => -2
    },
    "elf" => {
      "strength" => 0,
      "dexterity" => 2,
      "constitution" => -2,
      "intelligence" => 2,
      "wisdom" => 0,
      "charisma" => 0
    },
    "gnome" => {
      "strength" => -2,
      "dexterity" => 0,
      "constitution" => 2,
      "intelligence" => 0,
      "wisdom" => 0,
      "charisma" => 2
    },
    "halfling" => {
      "strength" => -2,
      "dexterity" => 2,
      "constitution" => 0,
      "intelligence" => 0,
      "wisdom" => 0,
      "charisma" => 2,
    }
  }
end

def modifiers_by_attribute
  {
    3 => -4,
    4 => -3,
    5 => -3,
    6 => -2,
    7 => -2,
    8 => -1,
    9 => -1,
    10 => 0,
    11 => 0,
    12 => 1,
    13 => 1,
    14 => 2,
    15 => 2,
    16 => 3,
    17 => 3,
    18 => 4,
    19 => 4,
    20 => 5
  }
end

def build_ability_modifiers(attribute_numbers)
  modifiers = attribute_numbers
  modifiers.each = modifiers_by_attribute[modifiers.each]
  return modifiers
end

attributes = Array.new(6) { sum_rolls_and_subtract_lowest(rolls) }
p "Your starting numbers are:"
p attributes

attributes = attributes.sort
puts

puts "The available races are: 
dwarf 
elf
gnome 
half-elf 
half-orc 
halfling
human"
puts
puts "Enter your race:"
dnd_race = gets.strip
puts
puts "The available classes are: 
barbarian 
bard 
cleric 
druid 
fighter
monk
paladin
ranger
rogue
sorcerer
wizard"
puts
puts "Enter your class:"
dnd_class = gets.strip
puts

puts "Building a(n) #{dnd_race} #{dnd_class}"
puts
attribute_numbers = assign_attributes(dnd_class, dnd_race, attributes)
puts "Your modified attributes are:"
puts "Strength     = #{attribute_numbers["strength"]}"
puts "Dexterity    = #{attribute_numbers["dexterity"]}"
puts "Constitution = #{attribute_numbers["constitution"]}"
puts "Intelligence = #{attribute_numbers["intelligence"]}"
puts "Wisdom       = #{attribute_numbers["wisdom"]}"
puts "Charisma     = #{attribute_numbers["charisma"]}"
puts
puts "Your ability modifiers are:"
ability_modifiers = build_ability_modifiers(attribute_numbers)
puts "Strength     >> #{ability_modifiers["strength"]}"
puts "Dexterity    >> #{ability_modifiers["dexterity"]}"
puts "Constitution >> #{ability_modifiers["constitution"]}"
puts "Intelligence >> #{ability_modifiers["intelligence"]}"
puts "Wisdom       >> #{ability_modifiers["wisdom"]}"
puts "Charisma     >> #{ability_modifiers["charisma"]}"
