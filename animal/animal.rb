
def pull(key)
  array = Array.new
  File.open("data/#{key}.txt", "r") do |f|
    while (line = f.gets)
      array << line.strip
    end
  end
  return array
end

array = pull("directory")

hash = Hash.new
array.each do |key|
  hash[key] = pull(key)
end

p array
p hash
