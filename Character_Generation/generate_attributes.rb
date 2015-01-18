def rolls
  array = [ ]
  i = 0
  while i < 4
    array << rand(1..6)
    i = i + 1
  end
  return array
end

def sum_rolls(rolls)
  i = 0
  sum = 0
  while i < 4
  sum = sum + rolls[i]
  i = i + 1
  end
  return sum
end

def subtract_lowest_die(rolls)
  i = 0
  while i < 6
    if rolls.include?(i)
    break
    end
    i = i + 1
  end
  return sum_rolls(rolls) - i
end

def  build_class 
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

def attribute_order(attributes, dnd_class, dnd_race)
  changes = race_attribute_changes[dnd_race]
  attribute_order = [ ]
  if race_attribute_changes.include?(dnd_race)
    i = 0
    while i < changes.size
      attribute_order << attributes[build_class[dnd_class].index(changes.keys[i])] + changes.values[i]
      i = i + 1
    end
  else
    attribute_order << attributes[build_class[dnd_class].index("strength")]
    attribute_order << attributes[build_class[dnd_class].index("dexterity")]
    attribute_order << attributes[build_class[dnd_class].index("constitution")]
    attribute_order << attributes[build_class[dnd_class].index("intelligence")]
    attribute_order << attributes[build_class[dnd_class].index("wisdom")]
    attribute_order << attributes[build_class[dnd_class].index("charisma")]
    if check_for_low_attributes(attribute_order) == 0
      attribute_order[attribute_location[build_class[dnd_class][0]]] = attribute_order[attribute_location[build_class[dnd_class][0]]] + 2
    else
      attribute_order[attribute_location[build_class[dnd_class][5]]] = attribute_order[attribute_location[build_class[dnd_class][5]]] + 2
    end
  end
  return attribute_order
end

def check_for_low_attributes(attribute_order)
  check = 1
  i = 3
  while i < 7
    if attribute_order.include?(i)
      check = 0
    end
    i = i + 1
  end
  return check
end


def attribute_location
  {
    "strength" => 0,
    "dexterity" => 1,
    "constitution" => 2,
    "intelligence" => 3,
    "wisdom" => 4,
    "charisma" => 5
  }
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

def build_ability_modifiers(attributes, dnd_class, dnd_race)
  modified = attribute_order(attributes, dnd_class, dnd_race)
  i = 0
  while i < 6
    modified[i] = modifiers_by_attribute[modified[i]]
    i = i + 1
  end
  return modified
end

attributes= [ ]
i = 0
while i < 6
  attributes << subtract_lowest_die(rolls)
  i = i + 1
end
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
puts "The attribute order is: 
[Strength, Dexterity, Constitution, Intelligence, Wisdom, Charisma]"
puts "Your modified attributes are:"
p attribute_order(attributes, dnd_class, dnd_race)
puts "Your ability modifiers are:"
p build_ability_modifiers(attributes, dnd_class, dnd_race)
