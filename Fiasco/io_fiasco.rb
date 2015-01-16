def relationships_category
  File.open("data_fiasco", "r") do |file|
    while (line = file.gets)
      if line.include?("Relationship")
        (rand(1..6) - 1).times do
          file.gets
        end
        return file.gets
      end
    end
  end
end

def relationships_subcategory(relationship)
  File.open("data_fiasco", "r") do |file|
    while (line = file.gets)
      if line.include?("--#{relationship}")
        (rand(1..6) - 1).times do
          file.gets
        end
        return file.gets
      end
    end
  end
end

relationship = relationships_category
puts relationship
puts relationships_subcategory(relationship)
