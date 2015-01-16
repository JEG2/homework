def relationships_category
  File.open("data_fiasco", "r") do |file|
    while (line = file.gets)
      if line.include?("Relationship")
        (rand(1..6) - 1).times do
          file.gets
        end
        puts file.gets
      end
    end
  end
end

def relationships_subcategory
  File.open("data_fiasco", "r") do |file|
    while (line = file.gets)
      if line.include?(relationships_category)
        if file.gets.include?("Chain of Command")
        end
      end
    end
  end
end

relationships_category
