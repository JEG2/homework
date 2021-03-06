def minor_tables
  {
  nil => {
  1..4 => "Armor and shields",
  5..9 => "Weapons",
  10..44 => "Potions",
  45..46 => "Rings",
  47..81 => "Scrolls",
  82..91 => "Wands",
  92..100 => "Wondrous items"
},
  "Armor and shields" => {
  1..60 => "+1 shield",
  61..80 => "+1 armor",
  81..85 => "+2 shield",
  86..87 => "+2 armor",
  88..89 => "Specific armor",
  90..91 => "Specific shield",
  92..100 => "Special ability and roll again"
},
  "Special armor" => {
  1..25 => "Glamered",
  26..32 => "Fortification, light",
  33..52 => "Slick",
  53..92 => "Shadow",
  93..96 => "Spell resistance (13)",
  97..97 => "Slick, improved",
  98..99 => "Shadow, improved",
  100..100 => "Roll twice again"
},
  "Special shield" => {
  1..20 => "Arrow catching",
  21..40 => "Bashing",
  41..50 => "Blinding",
  51..75 => "Fortification, light",
  76..92 => "Arrow deflection",
  93..97 => "Animated",
  98..99 => "Spell resistance (13)",
  100..100 => "Roll twice again"
},
  "Specific armor" => {
  1..50 => "Mithral shirt",
  51..80 => "Dragonhide plate",
  81..100 => "Elven chain"
},
 "Specific shield" => {
  1..30 => "Darkwood buckler",
  31..80 => "Darkwood shield",
  81..95 => "Mithral heavy shield",
  96..100 => "Caster’s shield"
},
  "Weapons" => {
  1..70 => "+1",
  71..85 => "+2",
  86..90 => "Specific weapon",
  91..100 => "Special weapon ability and roll again"
},
  "Special melee weapon" => {
  1..10 => "Bane",
  11..17 => "Defending",
  18..27 => "Flaming",
  28..37 => "Frost",
  38..47 => "Shock",
  48..56 => "Ghost touch",
  57..67 => "Keen",
  68..71 => "Ki Focus",
  72..75 => "Merciful",
  76..82 => "Mighty cleaving",
  83..87 => "Spell storing",
  88..91 => "Throwing",
  92..95 => "Thundering",
  96..99 => "Vicious",
  100..100 => "Roll again twice"
},
 "Special ranged weapon" => {
  1..12 => "Bane",
  13..25 => "Distance",
  26..40 => "Flaming",
  41..55 => "Frost",
  56..60 => "Merciful",
  61..68 => "Returning",
  69..83 => "Shock",
  84..93 => "Seeking",
  94..99 => "Thundering",
  100..100 => "Roll again twice"
},
 "Bane" => {
  1..5 => "Aberrations",
  6..9 => "Animals",
  10..16 => "Constructs",
  17..22 => "Dragons",
  23..27 => "Fey",
  28..60 => "Humanoids (pick one subtype)",
  61..65 => "Magical beasts",
  66..70 => "Monstrous humanoids",
  71..72 => "Oozes",
  73..88 => "Outsiders (pick one subtype)",
  89..90 => "Plants",
  91..98 => "Undead",
  99..100 => "Vermin"
},
 "Specific weapon" => {
  1..15 => "Sleep arrow",
  16..25 => "Screaming bolt",
  26..45 => "Silver dagger, masterwork",
  46..65 => "Cold iron longsword, masterwork",
  66..75 => "Javelin of lightning",
  76..80 => "Slaying arrow",
  81..90 => "Adamantine dagger",
  91..100 => "Adamantine battleaxe"
},
 "Slaying arrow" => {
  1..5 => "Aberrations",
  6..9 => "Animals",
  10..16 => "Constructs",
  17..27 => "Dragons",
  28..32 => "Fey",
  33..33 => "Humanoids, aquatic",
  34..35 => "Humanoids, dwarf",
  36..37 => "Humanoids, elf",
  38..44 => "Humanoids, giant",
  45..45 => "Humanoids, gnoll",
  46..46 => "Humanoids, gnome",
  47..49 => "Humanoids, goblinoid",
  50..50 => "Humanoids, halfling",
  51..54 => "Humanoids, human",
  55..57 => "Humanoids, reptilian",
  58..60 => "Humanoids, orc",
  61..65 => "Magical beasts",
  66..70 => "Monstrous humanoids",
  71..72 => "Oozes",
  73..73 => "Outsiders, air",
  74..76 => "Outsiders, chaotic",
  77..77 => "Outsiders, earth",
  78..80 => "Outsiders, evil",
  81..81 => "Outsiders, fire",
  82..84 => "Outsiders, good",
  85..87 => "Outsiders, lawful",
  88..88 => "Outsiders, water",
  89..90 => "Plants",
  91..98 => "Undead",
  99..100 => "Vermin"
 },
  "Potions" => {
  1..20 => "0 Level",
  21..60 => "1st Level",
  61..100 => "2nd Level"
},
 "Rings" => {
  1..18 => "Protection +1",
  19..28 => "Feather falling",
  29..36 => "Sustenance",
  37..44 => "Climbing",
  45..52 => "Jumping", 
  53..60 => "Swimming",
  61..70 => "Counterspells",
  71..75 => "Mind shielding",
  76..80 => "Protection +2",
  81..85 => "Force shieldr",
  86..90 => "Ram, the",
  91..93 => "Animal friendship",
  94..96 => "Energy resistance, minor",
  97..98 => "Chameleon power",
  99..100 => "Water walking"
},
 "Scrolls" => {
  1..5 => "0 Level",
  6..50 => "1st Level",
  51..95 => "2nd Level",
  96..100 => "3rd Level"
},
 "Wands" => {
  1..5 => "0 Level",
  6..60 => "1st Level",
  61..100 => "2nd Level"
},
  "Wondrous items" => {
  1..1 => "Feather token, anchor",
  2..2 => "Universal solvent",
  3..3 => "Elixir of love",
  4..4 => "Unguent of timelessness",
  5..5 => "Feather token, fan",
  6..6 => "Dust of tracelessness",
  7..7 => "Elixir of hiding",
  8..8 => "Elixir of tumbling",
  9..9 => "Elixir of swimming",
  10..10 => "Elixir of vision",
  11..11 => "Silversheen",
  12..12 => "Feather token, bird",
  13..13 => "Feather token, tree",
  14..14 => "Feather token, swan boat",
  15..15 => "Elixir of truth",
  16..16 => "Feather token, whip",
  17..17 => "Dust of dryness",
  18..18 => "Hand of the mage",
  19..19 => "Bracers of armor +1",
  20..20 => "Cloak of resistance +1",
  21..21 => "Pearl of power, 1st-level spell",
  22..22 => "Phylactery of faithfulness",
  23..23 => "Salve of slipperiness",
  24..24 => "Elixir of fire breath",
  25..25 => "Pipes of the sewers",
  26..26 => "Dust of illusion",
  27..27 => "Brooch of shielding",
  28..28 => "Necklace of fireballs type I",
  29..29 => "Dust of appearance",
  30..30 => "Hat of disguise",
  31..31 => "Pipes of sounding",
  32..32 => "Efficient quiver",
  33..33 => "Amulet of natural armor +1",
  34..34 => "Handy haversack",
  35..35 => "Horn o fog",
  36..36 => "Elemental gem",
  37..37 => "Robe of bones",
  38..38 => "Sovereign glue",
  39..39 => "Bag of holding, type I",
  40..40 => "Boots of elvinkind",
  41..41 => "Boots of the winterlands",
  42..42 => "Candle of truth",
  43..43 => "Cloak of elvenkind",
  44..44 => "Eyes of the eagle",
  45..45 => "Goggles of minute seeing",
  46..46 => "Scarab, golembane",
  47..47 => "Necklace of fireballs type II",
  48..48 => "Stone of alarm",
  49..49 => "Bead of force",
  50..50 => "Chime of opening",
  51..51 => "Horseshoes of speed",
  52..52 => "Rope of climbing",
  53..53 => "Bag of tricks, gray",
  54..54 => "Dust of disappearance",
  55..55 => "Lens of detection",
  56..56 => "Vestment, druid's",
  57..57 => "Figurine of wondrous power, silver raven",
  58..58 => "Belt of giant strength +2",
  59..59 => "Belt of incredible dexterity +2",
  60..60 => "Belt of mighty constitution +2",
  61..61 => "Bracers of armor +2",
  62..62 => "Cloak of resistance +2",
  63..63 => "Gloves of arrow snaring",
  64..64 => "Headband of alluring charisma +2",
  65..65 => "Headband of inspired wisdom +2",
  66..66 => "Headband of vast intelligence +2",
  67..67 => "Ioun stone, clear spindle",
  68..68 => "Restorative ointment",
  69..69 => "Marvelous pigments",
  70..70 => "Pearl of power, 2nd-level spell",
  71..71 => "Stone salve",
  72..72 => "Necklace of fireballs type III",
  73..73 => "Circlet of persuasion",
  74..74 => "Slippers of spider climbing",
  75..75 => "Incense of meditation",
  76..76 => "Amulet of mighty fists +1",
  77..77 => "Bag of holding type II",
  78..78 => "Bracers of archery, lesser",
  79..79 => "Ioun stone, dusty rose prism",
  80..80 => "Helm of comprehend languages and read magic",
  81..81 => "Vest of escape",
  82..82 => "Eversmoking bottle",
  83..83 => "Sustaining spoon",
  84..84 => "Necklace of fireballs type IV",
  85..85 => "Boots of striding and springing",
  86..86 => "Wind fan",
  87..87 => "Necklace of fireballs type V",
  88..88 => "Horseshoes of a zephyr",
  89..89 => "Pipes of haunting",
  90..90 => "Gloves of swimming and climbing",
  91..91 => "Crown of blasting, minor",
  92..92 => "Horn of goodness/evil",
  93..93 => "Robe of useful items",
  94..94 => "Boat, folding",
  95..95 => "Cloak of the manta ray",
  96..96 => "Bottle of air",
  97..97 => "Bag of holding, type III",
  98..98 => "Periapt of health",
  99..99 => "Boots of levitation",
  100..100 => "Harp of charming"
}
}
end

def roll_die(sides)
  rand(1..sides)
end

def coin_flip
  roll_die(2)
end

def choose_from_table(table)
  die   = roll_die(100)
  choices = table.keys
  i     = 0
  while i < choices.size
    if choices[i].include?(die)
      return table[choices[i]]
    end
    i = i + 1
  end
end

i = 0
a = 0
total = rand(3..12)

while a < total
 i = 0
 
 choice = choose_from_table(minor_tables[nil])
  
 puts "The category is #{choice}."

 item = choose_from_table(minor_tables[choice])

 puts "The item is #{item}."
 
 if choice == "Armor and shields"
   if item == "Specific armor" or item == "Specific shield"
     armor = choose_from_table(minor_tables[item])
   end

   if item == "Special ability and roll again"
     armor = choose_from_table(minor_tables["Armor and shields"])
      if armor == "armor +1" or armor == "armor +2" or armor == "Specific armor"
        spec = "Special armor"
      else
        spec = "Special shield"
      end
      special = choose_from_table(minor_tables[spec]) 
    end
    if armor != nil
      puts armor
    end

    if special != nil
      puts special
    end
    armor = nil
    special = nil
  end

  if choice == "Weapons"
    coin = coin_flip
    if item == "Specific weapon"
      weapon = choose_from_table(minor_tables["Specific weapon"])
      if weapon == "Slaying arrow"
      slay = chooose_from_table(minor_tables["Slaying arrow"])
      end
    end

    if item == "Special weapon ability and roll again"
     weapon = choose_from_table(minor_tables["Weapons"])
     puts weapon
     if coin == 0
       spec = "Special melee weapon"
     else
       spec = "Special ranged weapon"
     end
     weapon = choose_from_table(minor_tables[spec])
    end
    
    if weapon == "Bane"
    bane = choose_from_table(minor_tables["Bane"])
    end
    
    if bane != nil
      puts bane
    end
    
    if weapon != nil
      puts weapon
    end

    if slay != nil
      puts slay
    end

    weapon = nil
    bane = nil
    slay = nil
  end
  a = a + 1
  puts
end

def med_tables
  {
    nil => {
    1..10 => "Armor and Shields",
    11..20 => "Weapons",
    21..30 => "Potions",
    31..40 => "Rings",
    41..50 => "Rods",
    51..65 => "Scrolls",
    66..68 => "Staves",
    69..83 => "Wands",
    84..100 => "Wondrous Items"
  },
     
    "Armor and Shields" => {
    1..5 => "+1 shield",
    6..10 => "+1 armor",
    11..20 => "+2 shield",
    21..30 => "+2 armor",
    31..40 => "+3 shield",
    41..50 => "+3 armor",
    51..55 => "+4 shield",
    56..57 => "+4 armor",
    58..60 => "Specific armor",
    61..63 => "Specific shield",
    64..100 => "Special ability and roll again"
  },
     
    "Special armor" => {
    1..5 => "Glamered",
    6..8 => "Fortification, light",
    9..11 => "Slick",
    12..17 => "Shadow",
    18..19 => "Spell resistance (13)",
    20..29 => "Slick, improved",
    30..49 => "Shadow, improved",
    50..74 => "Energy resistance",
    75..79 => "Ghost touch",
    80..84 => "Invulnerability",
    85..89 => "Fortification, moderate",
    90..94 => "Spell resistance (15)",
    95..99 => "Wild",
    100..100 => "Roll twice again"
  },
     
    "Special shield" => {
    1..10 => "Arrow catching",
    11..20 => "Bashing",
    21..25 => "Blinding",
    26..40 => "Fortification, light",
    41..50 => "Arrow deflection",
    51..57 => "Animated",
    58..59 => "Spell resistance (13)",
    60..79 => "Energy resistance",
    80..85 => "Ghost touch",
    86..95 => "Fortification, moderate",
    96..98 => "Spell resistance (15)",
    99..99 => "Wild",
    100..100 => "Roll twice again"
  },
     
    "Specific armor" => {
    1..25 => "Mithral shirt",
    26..45 => "Dragonhide plate",
    46..57 => "Elven chain",
    58..67 => "Rhino hide",
    68..82 => "Adamantine breastplate",
    83..97 => "Dwarven plate",
    98..100 => "Banded mail of luck"
  },
     
    "Specific shield" => {
    1..20 => "Darkwood buckler",
    21..45 => "Darkwood shield",
    46..70 => "Mithral heavy shield",
    71..85 => "Caster’s shield",
    86..90 => "Spined shield",
    91..95 => "Lion’s shield",
    96..100 => "Winged shield"
  },
     
    "Weapons" => {
    1..10 => "+1",
    11..29 => "+2",
    30..58 => "+3",
    59..62 => "+4",
    63..68 => "Specific weapon",
    69..100 => "Special weapon ability and roll again"
  },
     
    "Special melee weapon" => {
    1..6 => "Bane",
    7..12 => "Defending",
    13..19 => "Flaming",
    20..26 => "Frost",
    27..33 => "Shock",
    34..38 => "Ghost touch",
    39..44 => "Keen",
    45..48 => "Ki Focus",
    49..50 => "Merciful",
    51..54 => "Mighty cleaving",
    55..59 => "Spell storing",
    60..63 => "Throwing",
    64..65 => "Thundering",
    66..69 => "Vicious",
    70..72 => "Anarchic",
    73..75 => "Axiomatic",
    76..78 => "Disruption",
    79..81 => "Flaming burst",
    82..84 => "Icy burst",
    85..87 => "Holy",
    88..90 => "Shocking burst",
    91..93 => "Unholy",
    94..95 => "Wounding",
    96..100 => "Roll again twice"
  },
     
    "Special ranged weapon" => {
    1..8 => "Bane",
    9..16 => "Distance",
    17..28 => "Flaming",
    29..40 => "Frost",
    41..42 => "Merciful",
    43..47 => "Returning",
    48..59 => "Shock",
    60..64 => "Seeking",
    65..68 => "Thundering",
    69..71 => "Anarchic",
    72..74 => "Axiomatic",
    75..79 => "Flaming burst",
    80..82 => "Holy",
    83..87 => "Icy burst",
    88..92 => "Shocking burst",
    93..95 => "Unholy",
    96..100 => "Roll again twice"
  },
     
    "Specific weapon" => {
    1..9 => "Javelin of lightning",
    10..15 => "Slaying arrow",
    16..24 => "Adamantine dagger",
    25..33 => "Adamantine battleaxe",
    34..37 => "Slaying arrow (greater)",
    38..40 => "Shatterspike",
    41..46 => "Dagger of venom",
    47..51 => "Trident of warning",
    52..57 => "Assassin’s dagger",
    58..62 => "Shifter’s sorrow",
    63..66 => "Trident of fish command",
    67..74 => "Flame tongue",
    75..79 => "Luck blade (o wishes)",
    80..86 => "Sword of subtlety",
    87..91 => "Sword of the planes",
    92..95 => "Nine lives stealer",
    96..98 => "Oathbow",
    99..100 => "Sword of life stealing",
  },

   "Slaying arrow" => {
    1..5 => "Aberrations",
    6..9 => "Animals",
    10..16 => "Constructs",
    17..27 => "Dragons",
    28..32 => "Fey",
    33..33 => "Humanoids, aquatic",
    34..35 => "Humanoids, dwarf",
    36..37 => "Humanoids, elf",
    38..44 => "Humanoids, giant",
    45..45 => "Humanoids, gnoll",
    46..46 => "Humanoids, gnome",
    47..49 => "Humanoids, goblinoid",
    50..50 => "Humanoids, halfling",
    51..54 => "Humanoids, human",
    55..57 => "Humanoids, reptilian",
    58..60 => "Humanoids, orc",
    61..65 => "Magical beasts",
    66..70 => "Monstrous humanoids",
    71..72 => "Oozes",
    73..73 => "Outsiders, air",
    74..76 => "Outsiders, chaotic",
    77..77 => "Outsiders, earth",
    78..80 => "Outsiders, evil",
    81..81 => "Outsiders, fire",
    82..84 => "Outsiders, good",
    85..87 => "Outsiders, lawful",
    88..88 => "Outsiders, water",
    89..90 => "Plants",
    91..98 => "Undead",
    99..100 => "Vermin"
  },

    "Slaying arrow (greater)" => {
    1..5 => "Aberrations",
    6..9 => "Animals",
    10..16 => "Constructs",
    17..27 => "Dragons",
    28..32 => "Fey",
    33..33 => "Humanoids, aquatic",
    34..35 => "Humanoids, dwarf",
    36..37 => "Humanoids, elf",
    38..44 => "Humanoids, giant",
    45..45 => "Humanoids, gnoll",
    46..46 => "Humanoids, gnome",
    47..49 => "Humanoids, goblinoid",
    50..50 => "Humanoids, halfling",
    51..54 => "Humanoids, human",
    55..57 => "Humanoids, reptilian",
    58..60 => "Humanoids, orc",
    61..65 => "Magical beasts",
    66..70 => "Monstrous humanoids",
    71..72 => "Oozes",
    73..73 => "Outsiders, air",
    74..76 => "Outsiders, chaotic",
    77..77 => "Outsiders, earth",
    78..80 => "Outsiders, evil",
    81..81 => "Outsiders, fire",
    82..84 => "Outsiders, good",
    85..87 => "Outsiders, lawful",
    88..88 => "Outsiders, water",
    89..90 => "Plants",
    91..98 => "Undead",
    99..100 => "Vermin"
  },
   
  "Potions" => {
    1..20 => "1st Level",
    21..60 => "2nd Level",
    61..100 => "3rd Level"
  },
     
    "Rings" => {
    1..5 => "Counterspells",
    6..8 => "Mind shielding",
    9..18 => "Protection +2",
    19..23 => "Force shield",
    24..28 => "Ram, the",
    29..34 => "Climbing, improved",
    35..40 => "Jumping, improved",
    41..46 => "Swimming, improved",
    47..50 => "Animal friendship",
    51..56 => "Energy resistance, minor",
    57..61 => "Chameleon power",
    62..66 => "Water walking",
    67..71 => "Protection +3",
    72..76 => "Spell storing, minor",
    77..81 => "Invisibility",
    82..85 => "Wizardry (I)",
    86..90 => "Evasion",
    91..93 => "X-ray vision",
    94..97 => "Blinking",
    98..100 => "Energy resistance, major"
  },
     
    "Rods" => {
    1..7 => "Metamagic, Enlarge, lesser",
    8..14 => "Metamagic, Extend, lesser",
    15..21 => "Metamagic, Silent, lesser",
    22..28 => "Immovable",
    29..35 => "Metamagic, Empower, lesser",
    36..42 => "Metal and mineral detection",
    43..53 => "Cancellation",
    54..57 => "Metamagic, Enlarge",
    58..61 => "Metamagic, Extend",
    62..65 => "Metamagic, Silent",
    66..71 => "Wonder",
    72..79 => "Python",
    80..83 => "Metamagic, Maximize, lesser",
    84..89 => "Flame extinguishing",
    90..97 => "Viper",
    98..99 => "Metamagic, Empower",
    100..100 => "Metamagic, Quicken, lesser"
  },
     
    "Wonder" => {
    1..5 => "Slow target for 10 rounds (Will DC 15 negates)",
    6..10 => "Faerie fire surrounds the target",
    11..15 => "Deludes wielder for 1 round into believing the rod functions as indicated by a second die roll (no save)",
    16..20 => "Gust of wind, but at windstorm force (Fortitude DC 14 negates)",
    21..25 => "Wielder learns target’s surface thoughts (as with detect thoughts) for 1d4 rounds (no save)",
    26..30 => "Stinking cloud appears at 30-ft. range (Fortitude DC 15 negates)",
    31..33 => "Heavy rain falls for 1 round in 60-ft. radius centered on rod wielder",
    34..36 => "Summon an animal--a rhino (01-25 on d%), elephant (26-50), or mouse (51-100)",
    37..46 => "Lightning bolt (70 ft. long, 5 ft. wide), 6d6 damage (Reflex DC 15 half)",
    47..49 => "A stream of 600 large butterflies pours forth and flutters around for 2 rounds, blinding everyone within 25 ft. (Reflex DC 14 negates)",
    50..53 => "Enlarge person on target if within 60 ft. of rod (Fortitude DC 13 negates)",
    54..58 => "Darkness, 30-ft.-diameter hemisphere, centered 30 ft. away from rod",
    59..62 => "Grass grows in 160-square-ft. area before the rod, or grass existing there grows to 10 times normal size",
    63..65 => "Turn ethereal any nonliving object of up to 1,000 lbs. mass and up to 30 cubic ft. in size",
    66..69 => "Reduce wielder two size categories (no save) for 1 day",
    70..79 => "Fireball at target or 100 ft. straight ahead, 6d6 damage (Reflex DC 15 half)",
    80..84 => "Invisibility covers rod wielder",
    85..87 => "Leaves grow from target if within 60 ft. of rod. These last 24 hours.",
    88..90 => "10-40 gems, value 1 gp each, shoot forth in a 30-ft.-long stream. Each gem deals 1 point of damage to any creature in its path: roll 5d4 for the number of hits and divide them among the available targets",
    91..95 => "Shimmering colors dance and play over a 40-ft.-by-30-ft. area in front of rod. Creatures therein are blinded for 1d6 rounds (Fortitude DC 15 negates)",
    96..97 => "Wielder (50% chance) or target (50% chance) turns permanently blue, green, or purple (no save)",
    98..100 => "Flesh to stone or stone to flesh if target is stone already (Fortitude DC 18 negates)"
  },
     
    "Scrolls" => {
    1..5 => "2nd Level",
    6..65 => "3rd Level",
    66..95 => "4th Level",
    96..100 => "5th Level"
  },
     
    "Staves" => {
    1..15 => "Charming",
    16..30 => "Fire",
    31..40 => "Swarming insects",
    41..55 => "Size alteration",
    56..75 => "Healing",
    76..90 => "Frost",
    91..95 => "Illumination",
    96..100 => "Defense"
  },
     
    "Wands" => {
    1..60 => "2nd Level",
    61..100 => "3rd Level"
  },
     
    "Wondrous Items" => {
    1..1 => "Amulet of natural armor +2",
    2..2=> "Golem manual, flesh",
    3..3 => "Hand of glory",
    4..4 => "Ioun stone, deep red sphere",
    5..5 => "Ioun stone, incandescent blue sphere",
    6..6 => "Ioun stone, pale blue rhomboid",
    7..7 => "Ioun stone, pink and green sphere",
    8..8 => "Ioun stone, pink rhomboid",
    9..9 => "Ioun stone, scarlet and blue sphere",
    10..10 => "Deck of illusions",
    11..11 => "Necklace of fireballs type VI",
    12..12 => "Candle of invocation",
    13..13 => "Robe of blending",
    14..14 => "Bag of tricks, rust",
    15..15 => "Necklace of fireballs type VII",
    16..16 => "Bracers of armor +3",
    17..17 => "Cloak of resistance +3",
    18..18 => "Decanter of endless water",
    19..19 => "Necklace of adaptation",
    20..20 => "Pearl of power, 3rd-level spell",
    21..21 => "Figurine of wondrous power, serpentine owl",
    22..22 => "Strand of prayer beads, lesser",
    23..23 => "Bag of holding type IV",
    24..24 => "Belt of physical might +2",
    25..25 => "Figurine of wondrous power, bronze griffon",
    26..26 => "Figurine of wondrous power, ebony fly",
    27..27 => "Gloves of storing",
    28..28 => "Headband of mental prowess +2",
    29..29 => "Ioun stone, dark blue rhomboid",
    30..30 => "Cape of the mountebank",
    31..31 => "Phylactery of negative channeling",
    32..32 => "Phylactery of positive channeling",
    33..33 => "Guantlet of rust",
    34..34 => "Boots of speed",
    35..35 => "Goggles of night",
    36..36 => "Golem manuel, clay",
    37..37 => "Medallion of thoughts",
    38..38 => "Blessed book",
    39..39 => "Gem of brightness",
    40..40 => "Lyre of building",
    41..41 => "Robe, Monk's",
    42..42 => "Cloak of arachnida",
    43..43 => "Belt of dwarvenkind",
    44..44 => "Periapt of wound closure",
    45..45 => "Pearl of the sirines",
    46..46 => "Figurine of wondrous power, onyx dog",
    47..47 => "Bag of tricks, tan",
    48..48 => "Belt of giant strength +4",
    49..49 => "Belt of incredible dexterity +4",
    50..50 => "Belt of mighty constitution +4",
    51..51 => "Belt of physical perfection +2",
    52..52 => "Boots, winged",
    53..53 => "Bracers of armor +4",
    54..54 => "Cloak of resistance +4",
    55..55 => "Headband of alluring charisma +4",
    56..56 => "Headband of inspired wisdom +4",
    57..57 => "Headband of mental superiority +2",
    58..58 => "Headband of vast intelligence +4",
    59..59 => "Pearl of power, 4th-level spell",
    60..60 => "Scabbard of keen edges",
    61..61 => "Figurine of wondrous power, golden lions",
    62..62 => "Chime of interruption",
    63..63 => "Broom of flying",
    64..64 => "Figurie of wondrous power, marble elephant",
    65..65 => "Amulet of natural armor +3",
    66..66 => "Ioun stone, iridescent spindle",
    67..67 => "Bracelet of friends",
    68..68 => "Amulet of mighty fists +2",
    69..69 => "Carpet of flying, 5 ft. by 5ft.",
    70..70 => "Horn of blasting",
    71..71 => "Ioun stone, pale lavender ellipsoid",
    72..72 => "Ioun stone, pearly white spindle",
    73..73 => "Portable hole",
    74..74 => "Stone of good luck (luckstone)",
    75..75 => "Figurine of wondrous power, ivory goats",
    76..76 => "Rope of entanglement",
    77..77 => "Golem manual, stone",
    78..78 => "Mask of the skull",
    79..79 => "Mattock of the titans",
    80..80 => "Crown of blasting, major",
    81..81 => "Cloak of displacement, minor",
    82..82 => "Helm of underwater action",
    83..83 => "Bracers of archery, greater",
    84..84 => "Bracers of armor +5",
    85..85 => "Cloak of resistance +5",
    86..86 => "Eyes of doom",
    87..87 => "Pearl of power, 5th-level spell",
    88..88 => "Maul of the titans",
    89..89 => "Cloak of the bat",
    90..90 => "Iron bands of binding",
    91..91 => "Cube of frost resistance",
    92..92 => "Helm of telepathy",
    93..93 => "Periapt of proof against poison",
    94..94 => "Robe of scintillating colors",
    95..95 => "Manual of bodily health +1",
    96..96 => "Manual of gainful exercise +1",
    97..97=> "Manual of quickness in action +1",
    98..98 => "Tome of clear thought +1",
    99..99 => "Tome of leadership and influence +1",
    100..100 => "Tome of understanding +1"
  }
  }
end

a = 0
dice = roll_die(6)
total = rand(2..8)

while a < total
 choice = choose_from_table(med_tables[nil])
 puts "The category is #{choice}."

 item = choose_from_table(med_tables[choice])
 puts "The item is #{item}."

 if choice == "Armor and Shields"
   if item == "Specific armor" or item == "Specific shield"
   armor = choose_from_table(med_tables[item])
   end
   
   if item == "Special ability and roll again"
     armor = choose_from_table(med_tables["Armor and Shields"])
     
     if armor == "+1 armor" or armor == "+2 armor" or armor == "+3 armor" or armor == "+4 armor" or armor == "Specific armor"
       spec = "Special armor"
     else
       spec = "Special shield"
     end
     special = choose_from_table(med_tables[spec])
   end
   if armor != nil
     puts armor
   end

   if special != nil
     puts special
   end
   armor = nil
   special = nil
 end

 if choice == "Weapons"
   coin = coin_flip
   if item == "Specific weapon"
     weapon = choose_from_table(med_tables["Specific weapon"])
     if weapon == "Slaying arrow" or weapon == "Slaying arrow (greater)"
     slay = choose_from_table(med_tables[weapon])
     end
   end
   if item == "Special weapon ability and roll again"
     weapon = choose_from_table(med_tables["Weapons"])
     puts weapon
     if coin == 0
       spec = "Special melee weapon"
     else
       spec = "Special ranged weapon"
     end
     weapon = choose_from_table(med_tables[spec])
   end

   if weapon == "Bane"
   bane = choose_from_table(minor_tables["Bane"])
   end

   if bane != nil
     puts bane
   end
 end

 if weapon != nil
   puts weapon
 end

 if slay != nil
   puts slay
 end
 weapon = nil
 bane = nil
 slay = nil

 if item == "Wonder"
 rod = choose_from_table(med_tables["Wonder"])
 end
 if rod != nil
   puts rod
 end
 rod = nil
a = a + 1
puts
end



def major_tables
  {
    nil => {
    1..10 => "Armor and shields",
    11..20 => "Weapons",
    21..25 => "Potions",
    26..35 => "Rings",
    36..45 => "Rods",
    46..55 => "Scrolls",
    56..75 => "Staves",
    76..80 => "Wands",
    81..100 => "Wondrous item"
  },
   "Armor and shields" => {
    1..8 => "+3 shield",
    9..16 => "+3 armor",
    17..27 => "+4 shield",
    28..38 => "+4 armor",
    39..49 => "+5 shield",
    50..57 => "+5 armor",
    58..60 => "Specific armor",
    61..63 => "Specific shield",
    64..100 => "Special ability and roll again"
  },
   "Special armor" => {
    1..3 => "Glamered",
    4..4 => "Fortification, light",
    5..7 => "Slick, improved",
    8..13 => "Shadow, improved",
    14..28 => "Energy resistance",
    29..33 => "Ghost touch",
    34..35 => "Invulnerability",
    36..40 => "Fortification, moderate",
    41..42 => "Spell resistance (15)",
    43..43 => "Wild",
    44..48 => "Slick, greater",
    49..58 => "Shadow, greater",
    59..83 => "Energy resistance,improved",
    84..88 => "Spell resistance (17)",
    89..89 => "Etherealness",
    90..90 => "Undead controlling",
    91..92 => "Fortification, heavy",
    93..94 => "Spell resistance (19)",
    95..99 => "Energy resistance, greater",
    100..100 => "Roll twice again"
  },
   "Special shield" => {
    1..5 => "Arrow catching",
    6..8 => "Bashing",
    9..10 => "Blinding",
    11..15 => "Fortification, light",
    16..20 => "Arrow deflection",
    21..25 => "Animated",
    26..41 => "Energy resistance",
    42..46 => "Ghost touch",
    47..56 => "Fortification, moderate",
    57..58 => "Spell resistance (15)",
    59..59 => "Wild",
    60..84 => "Energy resistance, improved",
    85..86 => "Spell resistance (17)",
    87..87 => "Undead controlling",
    88..91 => "Fortification, heavy",
    92..93 => "Reflecting",
    94..94 => "Spell resistance (19)",
    95..99 => "Energy resistance, greater",
    100..100 => "Roll twice again"
  },
   "Specific armor" => {
    1..10 => "Adamantine breastplate",
    11..20 => "Dwarven plate",
    21..32 => "Banded mail of luck",
    33..50 => "Celestial armor",
    51..60 => "Plate armor of the deep",
    61..75 => "Breastplate of command",
    76..90 => "Mithral full plate of speed",
    91..100 => "Demon armor"
  },
   "Specific shield" => {
    1..20 => "Caster’s shield",
    21..40 => "Spined shield",
    41..60 => "Lion’s shield",
    61..90 => "Winged shield",
    91..100 => "Absorbing shield"
  },
   "Weapons" => {
    1..20 => "+3",
    21..38 => "+4",
    39..49 => "+5",
    50..63 => "Specific weapon",
    64..100 => "Special weapon ability and roll again"
  },
   "Special melee weapon" => {
    1..3 => "Bane",
    4..6 => "Flaming",
    7..9 => "Frost",
    10..12 => "Shock",
    13..15 => "Ghost touch",
    16..19 => "Ki Focus",
    20..21 => "Mighty cleaving",
    22..24 => "Spell storing",
    25..28 => "Throwing",
    29..32 => "Thundering",
    33..36 => "Vicious",
    37..41 => "Anarchic",
    42..46 => "Axiomatic",
    47..49 => "Disruption",
    50..54 => "Flaming burst",
    55..59 => "Icy burst",
    60..64 => "Holy",
    65..69 => "Shocking burst",
    70..74 => "Unholy",
    75..78 => "Wounding",
    79..83 => "Speed",
    84..86 => "Brilliant energy",
    87..88 => "Dancing",
    89..90 => "Vorpal",
    91..100 => "Roll again twice"
  },
   "Special ranged weapon" => {
    1..4 => "Bane",
    5..8 => "Distance",
    9..12 => "Flaming",
    13..16 => "Frost",
    17..21 => "Returning",
    22..25 => "Shock",
    26..27 => "Seeking",
    28..29 => "Thundering",
    30..34 => "Anarchic",
    35..39 => "Axiomatic",
    40..49 => "Flaming burst",
    50..54 => "Holy",
    55..64 => "Icy burst",
    65..74 => "Shocking burst",
    75..79 => "Unholy",
    80..84 => "Speed",
    85..90 => "Brilliant energy",
    91..100 => "Roll again twice"
  },
   "Specific weapon" => {
    1..4 => "Assassin’s dagger",
    5..7 => "Shifter’s sorrow",
    8..9 => "Trident of fish command",
    10..13 => "Flame tongue",
    14..17 => "Luck blade (o wishes)",
    18..24 => "Sword of subtlety",
    25..31 => "Sword of the planes",
    32..37 => "Nine lives stealer",
    38..42 => "Oathbow",
    43..46 => "Sword of life stealing",
    47..51 => "Mace of terror",
    52..57 => "Life-drinker",
    58..62 => "Sylvan scimitar",
    63..67 => "Rapier of puncturing",
    68..73 => "Sun blade",
    74..79 => "Frost brand",
    80..84 => "Dwarven thrower",
    85..91 => "Luck blade (1 wish)",
    92..95 => "Mace of smiting",
    96..97 => "Luck blade (2 wishes)",
    98..99 => "Holy avenger",
    100..100 => "Luck blade (3 wishes)"
  },
   "Potions" => {
    1..20 => "2nd Level",
    21..100 => "3rd Level"
  },
   "Rings" => {
    1..2 => "Energy resistance, minor",
    3..7 => "Protection +3",
    8..10 => "Spell storing, minor",
    11..15 => "Invisibility",
    16..19 => "Wizardry (I)",
    20..25 => "Evasion",
    26..28 => "X-ray vision",
    29..32 => "Blinking",
    33..39 => "Energy resistance, major",
    40..49 => "Protection +4",
    50..55 => "Wizardry (II)",
    56..60 => "Freedom of movement",
    61..63 => "Energy resistance, greater",
    64..65 => "Friend shield (pair)",
    66..70 => "Protection +5",
    71..74 => "Shooting stars",
    75..79 => "Spell storing",
    80..83 => "Wizardry (III)",
    84..86 => "Telekinesis",
    87..88 => "Regeneration",
    89..91 => "Spell turning",
    92..93 => "Wizardry (IV)",
    94..94 => "Three wishes",
    95..95 => "Djinni calling",
    96..96 => "Elemental command (air)",
    97..97 => "Elemental command (earth)",
    98..98 => "Elemental command (fire)",
    99..99 => "Elemental command (water)",
    100..100 => "Spell storing, major"
  },
   "Rods" => {
    1..4 => "Cancellation",
    5..6 => "Metamagic, Enlarge",
    7..8 => "Metamagic, Extend",
    9..10 => "Metamagic, Silent",
    11..14 => "Wonder",
    15..19 => "Python",
    20..21 => "Metamagic, Maximize, lesser",
    22..25 => "Viper",
    26..30 => "Enemy detection",
    31..36 => "Metamagic, Enlarge, greater",
    37..42 => "Metamagic, Extend, greater",
    43..48 => "Metamagic, Silent, greater",
    49..53 => "Splendor",
    54..58 => "Withering",
    59..64 => "Metamagic, Quicken, lesser",
    65..69 => "Thunder and lightning",
    70..73 => "Metamagic, Quicken, lesser",
    74..77 => "Negation",
    78..80 => "Absorption",
    81..84 => "Flailing",
    85..86 => "Metamagic, Maximize",
    87..88 => "Rulership",
    89..90 => "Security",
    91..92 => "Lordly might",
    93..94 => "Metamagic, Empower, greater",
    95..96 => "Metamagic, Quicken",
    97..98 => "Alertness",
    99..99 => "Metamagic, Maximize, greater",
    100..100 => "Metamagic, Quicken, greater"
  },
   "Scrolls" => {
   1..5 => "4th Level",
   6..50 => "5th Level",
   51..70 => "6th Level",
   71..85 => "7th Level",
   86..95 => "8th Level",
   96..100 => "9th Level"
  },
   "Staves" => {
    1..3 => "Charming",
    4..9 => "Fire",
    10..11 => "Swarming insects",
    12..13 => "Size alteration",
    14..19 => "Healing",
    20..24 => "Frost",
    25..31 => "Illumination",
    32..38 => "Defense",
    39..45 => "Abjuration",
    46..50 => "Conjuration",
    51..55 => "Divination",
    56..60 => "Enchantment",
    61..65 => "Evocation",
    66..70 => "Illusion",
    71..75 => "Necromancy",
    76..80 => "Transmutation",
    81..85 => "Earth and stone",
    86..90 => "Woodlands",
    91..95 => "Life",
    96..98 => "Passage",
    99..100 => "Power"
    },
   "Wands" => {
    1..60 => "3rd Level",
    61..100 => "4th Level"
  },
   "Wondrous item" => {
    1..1 => "Dimensional shackles",
    2..2 => "Figurine of wondrous power, obsidian steed",
    3..3 => "Drums of panic",
    4..4 => "Ioun stone, orange prism",
    5..5 => "Ioun stone, pale green prism",
    6..6 => "Lantern of revealing",
    7..7 => "Amulet of natural armor +4",
    8..8 => "Amulet of proof against detection and locations",
    9..9 => "Carpet of flying, 5 ft. by 10 ft.",
    10..10 => "Golem manual, iron",
    11..11  => "Belt of giant strength +6",
    12..12  => "Belt of incredible dexterity +6",
    13..13  => "Belt of mighty constitution +6",
    14..14  => "Bracers of armor +6",
    15..15  => "Headband of alluring charisma +6",
    16..16  => "Headband of inspired wisdom +6",
    17..17  => "Headband of vast intelligence +6",
    18..18  => "Ioun stone, vibrant purple prism",
    19..19  => "Pearl of power, 6th-level spell",
    20..20  => "Scarab of protection",
    21..21  => "Belt of physical might +4",
    22..22  => "Headband of mental prowess +4",
    23..23  => "Ioun stone, lavender and green ellipsoid",
    24..24  => "Ring gates",
    25..25  => "Crystal ball",
    26..26  => "Golem manual, stone guardian",
    27..27  => "Amulet of mighty fists +3",
    28..28  => "Strand of prayer beads",
    29..29  => "Orb of storms",
    30..30  => "Boots of teleportation",
    31..31  => "Bracers of armor +7",
    32..32 => "Pearl of power, 7th-level spell",
    33..33 => "Amulet of natural armor +5",
    34..34  => "Cloak of displacement, major",
    35..35  => "Crystal ball with see invisibility",
    36..36  => "Horn of Valhalla",
    37..37  => "Crystal ball with detect thoughts",
    38..38  => "Wings of flying",
    39..39  => "Cloak of etherealness",
    40..40  => "Instant fortress",
    41..41  => "Manual of bodily health +2",
    42..42  => "Manual of gainful exercise +2",
    43..43  => "Manual of quickness in action +2",
    44..44  => "Tome of clear thought +2",
    45..45  => "Tome of leadership and influence +2",
    46..46  => "Tome of understanding +2",
    47..47  => "Eyes of charming",
    48..48  => "Robe of stars",
    49..49  => "Carpet of flying, 10 ft. by 10 ft.",
    50..50  => "Darkskull",
    51..51  => "Cube of force",
    52..52  => "Belt of physical perfection +4",
    53..53  => "Bracers of armor +8",
    54..54  => "Headband of mental superiority +4",
    55..55  => "Pearl of power, 8th-level spell",
    56..56  => "Crystal ball with telepathy",
    57..57  => "Horn of blasting, greater",
    58..58  => "Pearl of power, two spells",
    59..59  => "Helm of teleportation",
    60..60  => "Gem of seeing",
    61..61  => "Robe of the archmagi",
    62..62  => "Mantle of faith",
    63..63  => "Amulet of mighty fists +4",
    64..64  => "Crystal ball with true seeing",
    65..65  => "Pearl of power, 9th level spell",
    66..66  => "Well of many worlds",
    67..67  => "Manual of bodily health +3",
    68..68  => "Manual of gainful exercise +3",
    69..69  => "Manual of quickness in action +3",
    70..70  => "Tome of clear thought +3",
    71..71  => "Tome of leadership and influence +3",
    72..72  => "Tome of understanding +3",
    73..73  => "Apparatus of the crab",
    74..74  => "Belt of physical might +6",
    75..75  => "Headband of mental prowess +6",
    76..76  => "Mantle of spell resistance",
    77..77  => "Mirror of opposition",
    78..78  => "Strand of prayer beads, greater",
    79..79  => "Manual of bodily health +4",
    80..80  => "Manual of gainful exercise +4",
    81..81  => "Manual of quickness in action +4",
    82..82  => "Tome of clear thought +4",
    83..83  => "Tome of leadership and influence +4",
    84..84  => "Tome of understanding +4",
    85..85  => "Amulet of th planes",
    86..86  => "Robe of eyes",
    87..87  => "Amulet of mighty fists +5",
    88..88  => "Helm of brilliance",
    89..89  => "Manual of bodily health +5",
    90..90  => "Manual of gainful exercise +5",
    91..91  => "Manual of quickness in action +5",
    92..92  => "Tome of clear thought +5",
    93..93  => "Tome of leadership and influence +5",
    94..94  => "Tome of understanding +5",
    95..95  => "Belt of physical perfection +6",
    96..96  => "Headband of mental superiority +6",
    97..97  => "Efreeti bottle",
    98..98  => "Cubic gate",
    99..99  => "Iron flask",
    100..100 => "Mirror of life trapping"
  }
}
end

a = 0
dice = roll_die(4)
total = dice

while a < total
  choice = choose_from_table(major_tables[nil])
  puts "The category is #{choice}."
  
  item = choose_from_table(major_tables[choice])
  puts "The item is #{item}."

  if choice == "Armor and shields"
    if item == "Specific armor" or item == "Specific shield"
      armor = choose_from_table(major_tables[item])
    end

    if item == "Special ability and roll again"
      armor = choose_from_table(major_tables["Armor and shields"])
      if armor == "+3 armor" or armor == "+4 armor" or armor == "+5 armor" or armor == "Specific armor"
        spec = "Special armor"
      else
        spec = "Special shield"
      end
      special = choose_from_table(major_tables[spec])
    end
    if armor != nil
      puts armor
    end

    if special != nil
      puts special
    end
    armor = nil
    special = nil
  end

  if choice == "Weapons"
    coin = coin_flip
    if item == "Specific weapon"
      weapon = choose_from_table(major_tables["Specific weapon"])
    end
    if item == "Special weapon ability and roll again"
      weapon = choose_from_table(major_tables["Weapons"])
      puts weapon
      if coin == 0
        spec = "Special melee weapon"
      else
        spec = "Special ranged weapon"
      end
      weapon = choose_from_table(major_tables[spec])
    end

    if weapon == "Bane"
      bane = choose_from_table(minor_tables["Bane"])
    end

    if bane != nil
      puts bane
    end
  end
  if weapon != nil
    puts weapon
  end

  if slay != nil
    puts slay
  end
  weapon = nil
  bane = nil
  slay = nil

  if item == "Wonder"
    rod = choose_from_table(med_tables["Wonder"])
  end
  if rod != nil
    puts rod
  end
  rod = nil
  a = a + 1
  puts
end
