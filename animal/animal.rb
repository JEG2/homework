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

p table

animals = Hash.new
table.keys.each do |file|
  table["questions"].each do |question|
    if question.include?(file)
      animals[question] = table[file]
    end
  end
end

p animals

