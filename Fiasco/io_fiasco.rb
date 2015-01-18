class Pull_file
  def initialize(file_name1, file_name2)
    @file_name1 = file_name1
    @file_name2 = file_name2
  end

  def build_categories
    array = Array.new
    File.open(@file_name1, "r") { |file| file.each_line { |line| array << line.strip } }
    return array
  end

  def build_subcategories
    keys      = build_categories
    hash      = Hash.new
    keys.each { |i| File.open(@file_name2, "r") do |file|
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

relationships = Pull_file.new("relationship_categories", "relationship_subcategories")
p relationships.build_categories
p relationships.build_subcategories
