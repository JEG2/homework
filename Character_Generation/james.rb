def rolls
  Array.new(4) { rand(1..6) }
end

def sum_rolls_and_subtract_lowest(rolls)
  rolls.inject(0) { |sum, roll| sum + roll } - rolls.min
end

def racial_modifiers
  {
    dwarf: {
      constitution:  2,
      wisdom:        2,
      charisma:     -2
    },
    elf: {
      dexterity:     2,
      constitution: -2,
      intelligence:  2
    },
    gnome: {
      strength:     -2,
      constitution:  2,
      charisma:      2
    },
    halfling: {
      strength:     -2,
      dexterity:     2,
      charisma:      2
    }
  }
end

def ordered_attributes
  {
    barbarian: %i[wisdom intelligence charisma dexterity constitution strength],
    bard:      %i[wisdom strength constitution intelligence dexterity charisma],
    cleric:    %i[intelligence constitution dexterity strength charisma wisdom],
    druid:     %i[constitution strength dexterity charisma intelligence wisdom],
    fighter:   %i[charisma intelligence wisdom dexterity constitution strength],
    monk:      %i[charisma intelligence constitution dexterity wisdom strength],
    paladin:   %i[wisdom intelligence dexterity strength charisma constitution],
    ranger:    %i[constitution charisma strength intelligence wisdom dexterity],
    rogue:     %i[wisdom constitution strength intelligence charisma dexterity],
    sorcerer:  %i[strength constitution wisdom intelligence dexterity charisma],
    wizard:    %i[strength constitution charisma wisdom dexterity intelligence],
    default:   %i[strength dexterity constitution intelligence wisdom charisma]
  }
end

def assign_attributes(dnd_class, dnd_race, attributes)
  attributes_for_class = { }
  modifiers            = racial_modifiers[dnd_race.to_sym]    || { }
  ordered              = ordered_attributes[dnd_class.to_sym] ||
                         ordered_attributes[:default]
  ordered.zip(attributes.sort) do |attribute, score|
    attributes_for_class[attribute] = score + (modifiers[attribute] || 0)
  end
  if dnd_race.start_with?("half-") || dnd_race == "human"
    if attributes_for_class.values.first <= 6
      attributes_for_class[ordered.first] += 2
    else
      attributes_for_class[ordered.last] += 2
    end
  end
  attributes_for_class
end

def modifiers_by_attribute
  {
    3  => -4,
    4  => -3,
    5  => -3,
    6  => -2,
    7  => -2,
    8  => -1,
    9  => -1,
    10 =>  0,
    11 =>  0,
    12 =>  1,
    13 =>  1,
    14 =>  2,
    15 =>  2,
    16 =>  3,
    17 =>  3,
    18 =>  4,
    19 =>  4,
    20 =>  5
  }
end

def build_ability_modifiers(attribute_numbers)
  attribute_numbers.keys.each_with_object({ }) do |attribute, modifiers|
    modifiers[attribute] = modifiers_by_attribute[attribute_numbers[attribute]]
  end
end

def races
  %w[dwarf elf gnome half-elf half-orc halfling human]
end

def classes
  %w[ barbarian bard cleric druid fighter monk paladin ranger rogue
      sorcerer wizard ]
end

def get_user_choice(question, choices)
  puts question.sub("CHOICES", choices.map { |c| "* #{c}\n" }.join)
  choice = gets.strip
  if choices.include?(choice)
    choice
  else
    puts "Oops! Please try again."
    get_user_choice(question, choices)
  end
end

def print_attributes(attributes)
  ordered_attributes[:default].each do |attribute|
    printf "  %-12s = %2i\n", attribute.capitalize, attributes[attribute]
  end
end

def build_character
  attributes = Array.new(6) { sum_rolls_and_subtract_lowest(rolls) }
  puts "You rolled:  #{attributes[0..-2].join(', ')}, and #{attributes[-1]}."
  puts
  dnd_race  = get_user_choice("Choose a race:\n\nCHOICES\n?", races)
  dnd_class = get_user_choice("Choose a class:\n\nCHOICES\n?", classes)
  puts
  puts "Building a#{'n' if dnd_race == 'elf'} #{dnd_race} #{dnd_class}..."
  puts "Your modified attributes are:"
  attribute_numbers = assign_attributes(dnd_class, dnd_race, attributes.sort)
  print_attributes attribute_numbers
  puts "Your ability modifiers are:"
  print_attributes build_ability_modifiers(attribute_numbers)
end

build_character
