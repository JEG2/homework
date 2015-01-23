class Table
  def initialize(rarity, file)
    @rarity = rarity
    @file   = file
  end

  def build
    hash = Hash.new
    File.open("data/#{@rarity}/#{@file}.txt", "r") do |file|
      while (line = file.gets)
        hash[file.gets.strip] = file.gets.strip
      end
    end
    return hash
  end

end

minor = Table.new("minor", "table")
p minor.build

medium  = Table.new("medium", "table")
p medium.build

major = Table.new("major", "table")
p major.build
