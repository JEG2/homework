def rolls
  Array.new(4) { rand(1..6) }
end

def sum_rolls_and_subtract_lowest(rolls)
  rolls.inject(0) { |sum, roll| sum + roll } - rolls.min
end

def build_class 
  {
    barbarian: %i[wisdom intelligence charisma dexterity constitution strength],
    bard: %i[wisdom strength constitution intelligence dexterity charisma],
    cleric: %i[intelligence constitution dexterity strength charisma wisdom],
    druid: %i[constitution strength dexterity charisma intelligence wisdom],
    fighter: %i[charisma intelligence wisdom dexterity constitution strength],
    monk: %i[charisma intelligence constitution dexterity wisdom strength],
    paladin: %i[wisdom intelligence dexterity strength charisma constitution],
    ranger: %i[constitution charisma strength intelligence wisdom dexterity],
    rogue: %i[wisdom constitution strength intelligence charisma dexterity],
    sorcerer: %i[strength constitution wisdom intelligence dexterity charisma],
    wizard: %i[strength constitution charisma wisdom dexterity intelligence]
  }
end

def assign_attributes(dnd_class, dnd_race, attributes)
  class_attributes = {
    strength: nil,
    dexterity: nil,
    constitution: nil,
    intelligence: nil,
    wisdom: nil,
    charisma: nil
  }
  racial_modifiers = race_attribute_changes[dnd_race]
  if race_attribute_changes.include?(dnd_race)
    class_attributes.each do | key, value |
      class_attributes[key] = attributes[build_class[dnd_class].index(key)] + racial_modifiers[key]
    end
  else
    class_attributes.each do | key, value |
      class_attributes[key] = attributes[build_class[dnd_class].index(key)]
    end
    if class_attributes.values.min <= 6
      class_attributes[build_class[dnd_class][0]] = class_attributes[build_class[dnd_class][0]] + 2
    else
      class_attributes[build_class[dnd_class][5]] = class_attributes[build_class[dnd_class][5]] + 2
    end
  end
  return class_attributes
end

def race_attribute_changes
  {
    dwarf: {
      strength: 0,
      dexterity: 0,
      constitution: 2,
      intelligence: 0,
      wisdom: 2,
      charisma: -2
    },
    elf: {
      strength: 0,
      dexterity: 2,
      constitution: -2,
      intelligence: 2,
      wisdom: 0,
      charisma: 0
    },
    gnome: {
      strength: -2,
      dexterity: 0,
      constitution: 2,
      intelligence: 0,
      wisdom: 0,
      charisma: 2
    },
    halfling: {
      strength: -2,
      dexterity: 2,
      constitution: 0,
      intelligence: 0,
      wisdom: 0,
      charisma: 2,
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
  modifiers = {}
  attribute_numbers.each do |key, value|
    modifiers[key] = modifiers_by_attribute[attribute_numbers[key]]
  end
  return modifiers
end

def races
  %w[dwarf elf gnome half-elf half-orc halfling human]
end

def classes
  %w[barbarian bard cleric druid fighter monk paladin ranger rogue sorcerer wizard]
end

def race_spelling_test(dnd_race)
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
  if races.include?(dnd_race)
    return dnd_race
  else
    puts "Oops! Please try again."
    race_spelling_test(dnd_race)
  end
end

def class_spelling_test(dnd_class)
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
  if classes.include?(dnd_class)
    return dnd_class
  else
    puts "Oops! Please try again."
    class_spelling_test(dnd_class)
  end
end

attributes = Array.new(6) { sum_rolls_and_subtract_lowest(rolls) }
puts
puts "Your starting numbers are:"
p attributes
attributes.sort!
puts
dnd_race = race_spelling_test(dnd_race)
puts
dnd_class = class_spelling_test(dnd_class)
puts "Building a(n) #{dnd_race} #{dnd_class}"
puts
dnd_race = dnd_race.to_sym
dnd_class = dnd_class.to_sym
attribute_numbers = assign_attributes(dnd_class, dnd_race, attributes)
puts "Your modified attributes are:"
attribute_numbers.each do |key, value|
  puts "#{key.capitalize} = #{value}"
end
puts
puts "Your ability modifiers are:"
ability_modifiers = build_ability_modifiers(attribute_numbers)
ability_modifiers.each do |key, value|
  puts "#{key} = #{value}"
end
