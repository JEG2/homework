def category 
  File.open("relationship_categories", "r") do |file|
    while (line = file.gets)
      if line.include?("Relationship")
        rand(0..5).times do
          file.gets
        end
        return file.gets
      end
    end
  end
end

def subcategory(relationship_category)
  File.open("relationship_subcategories", "r") do |file|
    while (line = file.gets)
      if line.include?("#{relationship_category}")
        rand(0..4).times do
          file.gets
        end
        return file.gets
      end
    end
  end
end

relationship_category = category
puts relationship_category
relationship_subcategory = subcategory(relationship_category)
puts relationship_subcategory
