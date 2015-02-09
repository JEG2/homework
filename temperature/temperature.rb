temperature = ARGV.first.upcase
number = temperature.to_f
if temperature.end_with?("F")
  in_f = (number - 30)/2.0
  puts "#{in_f}C"
elsif temperature.end_with?("C")
  in_c = (number * 2) + 30
  puts "#{in_c}F"
end
