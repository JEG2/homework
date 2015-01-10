class Tables
  def initialize
    @table = {  }
  end

  def add_choice(category, subcategories)
    @table[category] = subcategories
  end

  def choose_category(choice)
    @table.keys[choice]
  end

  def choose_subcategory(choice, next_choice)
    @table[choose_category(choice)][next_choice]
  end

  def run(choice, next_choice)
    "#{@table.keys[choice - 1]} (#{choice}) #{@table[@table.keys[choice - 1]][next_choice - 1]} (#{next_choice})"
  end

  def statement(dice_a, dice_b)
    choice      = dice_a
    next_choice = dice_b
    run(choice, next_choice)
  end
end

relationships = Tables.new
relationships.add_choice("Chain of Command", [
  "Friendly enemies",
  "Officer and the crewman who seduced his love",
  "Inspiring leader of men and his simpering toady",
  "Fought side by side in the last war",
  "Lazy fool and tough old veteran",
  "Hard-case and the one who demoted him"
])
relationships.add_choice("Crew", [
  "Ignorant farm boys",
  "Gung-ho lunatics",
  "Up for the same promotion",
  "'You were both specially selected based on unique talents'",
  "Odd-men-out on a tight-knit boat",
  "Lovers"
])
relationships.add_choice("RE:Objective ZEBRA", [
  "Secret agent and Navy intelligence operative",
  "Occultist and Navy cameraman",
  "'Doctor' and Navy handler",
  "Secret agent and double agent",
  "Cultists",
  "Physicist and Navy liaison"
])
relationships.add_choice("Old Bonds", [
  "Shipboard enemies, shore leave friends",
  "Rivals in love",
  "We killed a man and he haunts us",
  "We saved a life and lived to regret it",
  "Through 'coincidence' always paired",
  "One shot the other, over something silly"
])
relationships.add_choice("Criminal Past", [
  "Bad boys, roughnecks, and roustabouts",
  "His criminal past would get him booted from the navy; only I know",
  "Bully and weak sister",
  "Leaders of rival shipboard gangs",
  "Murderer and the guy he thought he killed",
  "Victims of the boat's master grifter"
])
relationships.add_choice("Family", [
  "Brothers",
  "Competitive cousins",
  "Father and son, depsite regulations",
  "Blood brothers",
  "Brothers-in-law",
  "Mutual orphans who volunteered together"
])

needs = Tables.new
needs.add_choice("Need:\n   To get the truth about", [
  "...what happened to the Captain's quarters that night",
  "...the scratching on the hull",
  "Objective ZEBRA's real objective",
  "...the sudden illness sweeping the crew",
  "...the thing that happened on the island",
  "...what's in the fucking box"
])
needs.add_choice("Need:\n   To get respect from...", [
  "...the Captain of the USS Saddleback",
  "...the crew",
  "...your dark master",
  "...your overbearing father, may he rest in peace",
  "...yourself",
  "...your secret ex-lover aboard the Saddleback"
])
needs.add_choice("Need:\n   To hide that...", [
  "...you didn't exactly follow orders regarding Operation ZEBRA",
  "...there is a German agent aboard",
  "...you just killed a fellow sailor",
  "...drunk men sometimes don't do all the safety checks",
  "...you are responsible for this mess - all of it",
  "...you know far more about the mission than anyone guesses"
])
needs.add_choice("Need:\n   To finally take care of", [
  "...those lousy Kraut bastards waiting for us up there",
  "...your stupid brother, the family golden boy",
  "...yourself for a change",
  "...Lieutenant Joshua Sheppard",
  "...George, who else?",
  "...your own terror and loneliness"
])
needs.add_choice("Need:\n   To get away...", [
  "...to Cuxhaven, Lower Saxony, your ancestral home",
  "...to your family farm, to marry your pregnant girlfriend",
  "...from this steam pipe you're unfortunately handcuffed to",
  "...from this stinking air and these stinking people",
  "...from whatever is out there lurking in the depths",
  "...with the ritual"
])
needs.add_choice("Need:\n   To tell...", [
  "...the Captain what he did to your dad, right before you kill him",
  "...the Navy what happened with Objective ZEBRA",
  "...everybody about the ghosts, and what they want",
  "...the Chosen One he must prepare",
  "...your superior officer to fuck off",
  "...the scientist what you added to his bag back on the island"
])

locations = Tables.new
locations.add_choice("Location:\n   The Mission - Flashback", [
  "The chart table of USS Saddleback, an unusual chart on display",
  "The deck of Cannon-class Destroyer Escrot USS Eldridge",
  "Hunted, depth-charged, leaking, sinking",
  "On the surface, an island on the horizon, dinghies on deck",
  "Hell itself, or a reasonable facsimile",
  "The sunken wreck of a German E-Boat"
])
locations.add_choice("Location:\n   Groton Naval Base - Flashback", [
  "Franklin Delano Roosevelt's motorcade",
  "The Five Fathom Club, a Groton dive bar",
  "A heavily guarded concrete bunker labeled ZEBRA PRIME",
  "Research pressure chamber 1",
  "In an alley, with an Admiral",
  "Temporary duty barracks, heavy with dread"
])
locations.add_choice("Location:\n   The Island - Flashback", [
  "Ruins of an ancient temple",
  "Underground, with guns blazing",
  "German facility",
  "Strange pinnacle",
  "Driftwood shelter awash in blood",
  "Above a mass grave"
])
locations.add_choice("Location:\n   Where we do things", [
  "The surreal, silent engine room",
  "Crammed inside a blood-stained torpedo tube",
  "Partially-flooded pump room",
  "Officers' mess, now living up to its name",
  "Radio operator's station, from which creepy noises emanate",
  "The should-be-empty-now conning tower"
])
locations.add_choice("Location:\n   Where we keep things", [
  "Torpedo room, with a primed 'fish' rolling on the deck",
  "Under a filthy rack",
  "Fresh water tank, where this thing should not be floating",
  "Ship's pantry, curiously empty",
  "Improvised sick bay in officer's country",
  "Inside the leaking oil sump"
])
locations.add_choice("Location:\n   Where we currently avoid", [
  "The now burnt-out Captain's quarters",
  "Outside, in crushing deep water",
  "In the black water tank",
  "In the Number 3 forward torpedo tube, forcibly jammed shut",
  "Ancient-looking steamer trunk with all the padlocks",
  "Battery room crawlspace"
])

objects = Tables.new
objects.add_choice("Object:\n   Weapon", [
  "Colt M1911 pistol",
  "M3A1 'grease gun'",
  "Big old galley knife",
  "Signal flare",
  "Marlin spike",
  "Aluminum pan of battery acid"
])
objects.add_choice("Object:\n   Tools", [
  "Over-used and damaged electrical saw",
  "A weirdly clean hammer",
  "Gigantic pipefitter's wrench",
  "'Momsen lung' submarine escape system",
  "Depth gage",
  "Unusual surgical instruments"
])
objects.add_choice("Object:\n   Missing and unaccointed for", [
  "Cockwheel for torpedo tube 3",
  "Radio's microphone",
  "Captain's uniform",
  "Pills, lots of pills",
  "Half the boat's food supply",
  "Keys to the weapon locker"
])
objects.add_choice("Object:\n   Strange Comfort", [
  "Unreliable compass with shattered glass",
  "Oil-stained and generally dog-eared bible",
  "Signed Art Tatum record with personal note",
  "Straight razor, flecks of dried blood on the blade",
  "Diary written in a dead language",
  "Carefully concealed bottle of whiskey"
])
objects.add_choice("Object:\n   Memories", [
  "Photo of a woman and two kids, 'Munchen, 1932' handwritten",
  "Photograph of a ghost aboard a submarine, marked SECRET",
  "Oil painting of the Saddlebacks' previous officers",
  "Erotic magazine, annotated in code",
  "Set of instructions for demon summoning",
  "Navy Cross in a velvet-lined box"
])
objects.add_choice("Object:\n   Disturbing", [
  "Strange idol, bathed in deep sea muck",
  "List of 13 names, including the recently killed, some crossed off",
  "Broken hatch door with marks of fists in the metal",
  "Sealed orders",
  "The Shroud of Turin",
  "Diary of the cook, explaining that he poisoned everybody on board"
])

class Runner
  def initialize(relationships, needs, locations, objects)
    @relationships = relationships
    @needs         = needs
    @locations     = locations
    @objects       = objects
    @dice          = Array.new(16) { rand(1..6) }
  end

  def run
    details = [
      @needs,
      @locations,
      @objects,
      [@locations, @objects].sample
    ].shuffle
    details.each_with_index do |subcategory, i|
      puts "Player #{i + 1} and Player #{(i + 1) % 4 + 1}:"
      puts "  #{@relationships.statement(@dice[i], @dice[i + 1])}"
      puts subcategory.statement(@dice[i + 2], @dice[i + 3])
      puts
    end
  end
end

Runner.new(relationships, needs, locations, objects).run
