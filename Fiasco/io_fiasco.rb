class Tables
  def initialize(file_name)
    @file_name = file_name
  end

  def build_categories
    array = Array.new
    File.open(@file_name, "r") do |file|
      while (line = file.gets)
        if line.include?("--marker")
          array << file.gets.strip
        end
      end
    end
    return array
  end

  def run
    keys      = build_categories
    hash      = Hash.new
    keys.each { |i| File.open(@file_name, "r") do |file|
      while (line = file.gets)
        if line.include?(i)
          hash[i] = [file.gets.strip, file.gets.strip, file.gets.strip, file.gets.strip, file.gets.strip, file.gets.strip]
        end
      end
    end
    }
    return hash
  end
end

relationships = Tables.new("relationships").run

needs         = Tables.new("needs").run

objects       = Tables.new("objects").run

locations     = Tables.new("locations").run

class Runner
  def initialize(relationships, needs, locations, objects)
    @relationships  = relationships
    @needs          = needs
    @locations      = locations
    @objects        = objects
    @dice           = Array.new(16) { rand(1..6) }
  end

  def run
    details = [
      @needs,
      @locations,
      @objects,
      [@locations, @objects].sample
    ].shuffle
    puts "Your dice are #{@dice.join(", ")}"
    details.each_with_index do |subcategory, i|
      d = i * 4
      puts "Player #{i + 1} and Player #{(i + 1) % 4 + 1}:"
      puts "  #{@relationships.keys[@dice[d] - 1]} (#{@dice[d]}) #{@relationships[@relationships.keys[@dice[d] - 1]][@dice[d + 1] - 1]} (#{@dice[d + 1]})"
      puts "#{subcategory.keys[@dice[d + 2] - 1]} (#{@dice[d + 2]}) #{subcategory[subcategory.keys[@dice[d + 2] - 1]][@dice[d + 3] - 1]} (#{@dice[d + 3]})"
      puts
    end
  end

end

Runner.new(relationships, needs, locations, objects).run
