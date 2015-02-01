class Builder
  def pull(key)
  array = Array.new
  File.open("data/#{key}.txt", "r") do |f|
    while (line = f.gets)
      array << line.strip
    end
  end
  return array
  end
  
  def run
    array = pull("directory")
    hash = Hash.new
    array.each do |key|
      hash[key] = pull(key)
    end
    return hash
  end
end

table = Builder.new
table = table.run

master_tables = Hash.new
table.keys.each do |file|
  table["questions"].each do |question|
    if question.include?(file)
      master_tables[question] = table[file]
    end
  end
end

def yes(animals, master_tables, question)
  animals.delete_if { |animal| !master_tables[question].include?(animal) }
  return animals
end

def no(animals, master_tables, question)
  animals.delete_if { |animal| master_tables[question].include?(animal) }
  return animals
end

p master_tables

animals = Builder.new
animals = animals.pull("animal")

puts "Think of an animal."
puts "Please answer all questions with 'yes' or 'no'."
puts "Is your animal a category, such as horse, cat, mouse? (As opposed to a particular breed or species)"
category = gets.strip
if category == "yes"
  animals.delete_if { |animal| !table["category"].include?(animal) }
  puts animals
  question = table["questions"].sample
  p question
  table["questions"].delete(question)
  answer = gets.strip
  if answer == "yes"
    animals = yes(animals, master_tables, question)
    while animals.size > 1
      question = table["questions"].sample
      p question
      table["questions"].delete(question)
      answer = gets.strip
      if answer == "yes"
        animals = yes(animals, master_tables, question)
      elsif answer == "no"
        animals = no(animals, master_tables, question)
      else
        puts "Oops! I didn't understand your response. Please start again."
      end
    end
    puts animals
  elsif answer == "no"
    animals = no(animals, master_tables, question)
    while animals.size > 1
      question = table["questions"].sample
      p question
      table["questions"].delete(question)
      answer = gets.strip
      if answer == "yes"
        animals = yes(animals, master_tables, question)
      elsif answer == "no"
        animals = no(animals, master_tables, question)
      else
        puts "Oops! I didn't understand your response. Please start again."
      end
    end
    puts animals
  else
    puts "Oops! I didn't understand your response. Please start again."
  end
elsif category == "no"
  puts "Is it a breed?"
  breed = gets.strip
  if breed == "yes"
    animals.delete_if { |animal| !table["breed"].include?(animal) }
    puts animals
  elsif breed == "no"
    animals.delete_if { |animal| ! table["species"].include?(animal) }
    puts animals
  else
    puts "Oops! I didn't understand your response. Please start again."
  end
else
  puts "Oops! I didn't understand your response. Please start again."
end


