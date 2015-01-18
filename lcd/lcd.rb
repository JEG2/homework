def zero(number_size)
  zero =
  [" - ",
   "| |",
   "   ",
   "| |",
   " - "
  ]
  zero.each { |line| line[1] = line[1] * number_size }
  (number_size - 1).times do zero.insert(1, zero[1]) end
  (number_size - 1).times do zero.insert(3 + (number_size - 1), zero[3 + (number_size - 1)]) end
  return zero
end

def one(number_size)
  one =
  ["   ",
   "  |",
   "   ",
   "  |",
   "   "
  ]
  one.each { |line| line[1] = line[1] * number_size }
  (number_size - 1).times do one.insert(1, one[1]) end
  (number_size - 1).times do one.insert(3 + (number_size - 1), one[3 + (number_size - 1)]) end
  return one
end

def two(number_size)
  two =
  [" - ",
   "  |",
   " - ",
   "|  ",
   " - "
  ]
  two.each { |line| line[1] = line[1] * number_size }
  (number_size - 1).times do two.insert(1, two[1]) end
  (number_size - 1).times do two.insert(3 + (number_size - 1), two[3 + (number_size - 1)]) end
  return two
end

def three(number_size)
three =
  [" - ",
   "  |",
   " - ",
   "  |",
   " - "
  ]
  three.each { |line| line[1] = line[1] * number_size }
  (number_size - 1).times do three.insert(1, three[1]) end
  (number_size - 1).times do three.insert(3 + (number_size - 1), three[3 + (number_size - 1)]) end
  return three
end

def four(number_size)
  four =
  ["   ",
   "| |",
   " - ",
   "  |",
   "   "
  ]
  four.each { |line| line[1] = line[1] * number_size }
  (number_size - 1).times do four.insert(1, four[1]) end
  (number_size - 1).times do four.insert(3 + (number_size - 1), four[3 + (number_size - 1)]) end
  return four
end

def five(number_size)
five =
  [" - ",
   "|  ",
   " - ",
   "  |",
   " - "
  ]
  five.each { |line| line[1] = line[1] * number_size }
  (number_size - 1).times do five.insert(1, five[1]) end
  (number_size - 1).times do five.insert(3 + (number_size - 1), five[3 + (number_size - 1)]) end
  return five
end

def six(number_size)
  six =
  ["   ",
   "|  ",
   " - ",
   "| |",
   " - "
  ]
  six.each { |line| line[1] = line[1] * number_size }
  (number_size - 1).times do six.insert(1, six[1]) end
  (number_size - 1).times do six.insert(3 + (number_size - 1), six[3 + (number_size - 1)]) end
  return six
end

def seven(number_size)
  seven =
  [" - ",
   "  |",
   "   ",
   "  |",
   "   "
  ]
  seven.each { |line| line[1] = line[1] * number_size }
  (number_size - 1).times do seven.insert(1, seven[1]) end
  (number_size - 1).times do seven.insert(3 + (number_size - 1), seven[3 + (number_size - 1)]) end
  return seven
end

def eight(number_size)
  eight = 
  [" - ",
   "| |",
   " - ",
   "| |",
   " - "
  ]
  eight.each { |line| line[1] = line[1] * number_size }
  (number_size - 1).times do eight.insert(1, eight[1]) end
  (number_size - 1).times do eight.insert(3 + (number_size - 1), eight[3 + (number_size - 1)]) end
  return eight
end

def nine(number_size)
  nine =
  [" - ",
   "| |",
   " - ",
   "  |",
   "   "
  ]
  nine.each { |line| line[1] = line[1] * number_size }
  (number_size - 1).times do nine.insert(1, nine[1]) end
  (number_size - 1).times do nine.insert(3 + (number_size - 1), nine[3 + (number_size - 1)]) end
  return nine
end

def convert_from_integer(number_size)
  {
    "0" => zero(number_size),
    "1" => one(number_size),
    "2" => two(number_size),
    "3" => three(number_size),
    "4" => four(number_size),
    "5" => five(number_size),
    "6" => six(number_size),
    "7" => seven(number_size),
    "8" => eight(number_size),
    "9" => nine(number_size)
  }
end

numbers = ARGV.last
numbers = numbers.chars

if ARGV[0] == "-s"
  number_size = ARGV[1].to_i
else
  number_size = 2
end

items = [  ]
numbers.each {|n| items << convert_from_integer(number_size)[numbers[numbers.index(n)]] }

i = 0
size = 5 + ((number_size -1) * 2)
while i < size
  statement = " "
  items.each {|item| statement.gsub!(/$/,"#{item[i]}  ")}
  puts statement
  i = i + 1
end
