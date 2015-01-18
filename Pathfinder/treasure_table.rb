class TreasureTable
  def initialize
    @table = {}
  end

  def add_choice(low, high, name)
    @table[low..high] = name
  end

  def choose(choice = rand(1..100))
    category = @table.keys.find { |range| range.include?(choice) }
    @table[category]
  end
end

table = TreasureTable.new
table.add_choice(1, 33, "Armor")
table.add_choice(34, 80, "Weapon")
table.add_choice(81, 100, "Wondrous Item")
p table.choose


