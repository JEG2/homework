class Table
  def initialize(rarity)
    @rarity               = rarity
    @table                = "table"
    #armor and shields
    @armorandshields      = "armorandshields"
    @specialarmor         = "specialarmor"
    @specialshield        = "specialshield"
    @specificarmor        = "specificarmor"
    @specificshield       = "specificshield"
    #weapons
    @weapons              = "weapons"
    @bane                 = "bane"
    @slayingarrow         = "slayingarrow"
    @slayingarrowgreater  = "slayingarrowgreater"
    @specialmeleeweapon   = "specialmeleeweapon"
    @specialrangedweapon  = "specialrangedweapon"
    @specificweapon       = "specificweapon"
    #other items
    @potions              = "potions"
    @rings                = "rings"
    @rods                 = "rods"
    @scrolls              = "scrolls"
    @staves               = "staves"
    @wands                = "wands"
    @wonder               = "wonder"
    @wondrousitems        = "wondrousitems"
  end


  def build(file)
    hash = Hash.new
    File.open("data/#{@rarity}/#{file}.txt", "r") do |file|
      while (line = file.gets)
        range_start = file.gets.strip.to_i
        range_end   = file.gets.strip.to_i
        hash[range_start..range_end] = file.gets.strip
      end     
    end
    return hash
  end

  def run
    hash = Hash.new
    hash[nil]                       = build(@table)
    hash["Armor and shields"]       = build(@armorandshields)
    hash["Special armor"]           = build(@specialarmor)
    hash["Special shield"]          = build(@specialshield)
    hash["Specific armor"]          = build(@specificarmor)
    hash["Specific shield"]         = build(@specificshield)
    hash["Weapons"]                 = build(@weapons)
    hash["Bane"]                    = build(@bane)
    hash["Special melee weapon"]    = build(@specialmeleeweapon)
    hash["Special ranged weapon"]   = build(@specialrangedweapon)
    hash["Specific weapon"]         = build(@specificweapon)
    hash["Slaying arrow"]           = build(@slayingarrow)
    hash["Slaying arrow (greater)"] = build(@slayingarrowgreater)
    hash["Potions"]                 = build(@potions)
    hash["Rings"]                   = build(@rings)
    hash["Rods"]                    = build(@rods)
    hash["Scrolls"]                 = build(@scrolls)
    hash["Staves"]                  = build(@staves)
    hash["Wands"]                   = build(@wands)
    hash["Wonder"]                  = build(@wonder)
    hash["Wondrous item"]           = build(@wondrousitems)
    return hash
  end
end

minor   = Table.new("minor").run
medium  = Table.new("medium").run=
major   = Table.new("major").run
