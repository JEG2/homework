File.foreach("data_fiasco") do |line|
  if line.include?("old")
    puts line
  end
end

