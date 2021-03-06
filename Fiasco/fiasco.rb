dice = [ ]
i = 0
while i < 16
dice << rand(1..6)
i = i+1
end
puts
puts "Your dice are: #{dice.join(',')}"
puts
      

relat = ["Chain of Command", "Crew", "RE: Objective ZEBRA", "Old Bonds", "Criminal Past", "Family"]
      
chain = ["Friendly enemies", "Officer and the crewman who seduced his love", "Inspiring leader of men and his simpering toady", "Fought side by side in the last war", "Lazy fool and tough old veteran", "Hard-case and the one who demoted him"]
      
crew = ["Ignorant farm boys", "Gung-ho lunatics", "Up for the same promotion", "'You were both specially selected based on unique talents'", "Odd-men-out on a tight-knit boat", "Lovers"]
      
zebra = ["Secret agent and Navy intelligence operative", "Occultist and Navy cameraman", "'Doctor' and Navy handler", "Secret agent and double agent", "Cultists", "Physicist and Navy liaison"]
      
bonds = ["Shipboard enemies, shore leave friends", "Rivals in love", "We killed a man and he haunts us", "We saved a life and lived to regret it", "Through 'coincidence' always paired", "One shot the other, over something silly"]
      
crime = ["Bad boys, roughnecks, and roustabouts", "His criminal past would get him booted from the navy; only I know", "Bully and weak sister", "Leaders of rival shipboard gangs", "Murderer and the guy he thought he killed", "Victims of the boat's master grifter"]
      
family = ["Brothers", "Competitive cousins", "Father and son, depsite regulations", "Blood brothers", "Brothers-in-law", "Mutual orphans who volunteered together"]
      
subs = [chain, crew, zebra, bonds, crime, family] 
needs = ["To get the truth about...", "To get respect from...", "To hide that...", "To finally take care of...", "To get away...", "To tell..."]
       
truth = ["...what happened to the Captain's quarters that night", "...the scratching on the hull", "Objective ZEBRA's real objective", "...the sudden illness sweeping the crew", "...the thing that happened on the island", "...what's in the fucking box"]
       
respect = ["...the Captain of the USS Saddleback", "...the crew", "...your dark master", "...your overbearing father, may he rest in peace", "...yourself", "...your secret ex-lover aboard the Saddleback"]
       
hide = ["...you didn't exactly follow orders regarding Operation ZEBRA", "...there is a German agent aboard", "...you just killed a fellow sailor", "...drunk men sometimes don't do all the safety checks", "...you are responsible for this mess - all of it", "...you know far more about the mission than anyone guesses"]
       
care = ["...those lousy Kraut bastards waiting for us up there", "...your stupid brother, the family golden boy", "...yourself for a change", "...Lieutenant Joshua Sheppard", "...George, who else?", "...your own terror and loneliness"]
       
away = ["...to Cuxhaven, Lower Saxony, your ancestral home", "...to your family farm, to marry your pregnant girlfriend", "...from this steam pipe you're unfortunately handcuffed to", "...from this stinking air and these stinking people", "...from whatever is out there lurking in the depths", "...with the ritual"]
       
tell = ["...the Captain what he did to your dad, right before you kill him", "...the Navy what happened with Objective ZEBRA", "...everybody about the ghosts, and what they want", "...the Chosen One he must prepare", "...your superior officer to fuck off", "...the scientist what you added to his bag back on the island"]
       
subs2 = [truth, respect, hide, care, away, tell]
     

cat = ["The Mission - Flashback", "Groton Naval Base - Flashback", "The Island - Flashback", "Where we do things", "Where we keep things", "Where we currently avoid"]
mission = ["The chart table of USS Saddleback, an unusual chart on display", "The deck of Cannon-class Destroyer Escrot USS Eldridge", "Hunted, depth-charged, leaking, sinking", "On the surface, an island on the horizon, dinghies on deck", "Hell itself, or a reasonable facsimile", "The sunken wreck of a German E-Boat"]
base = ["Franklin Delano Roosevelt's motorcade", "The Five Fathom Club, a Groton dive bar", "A heavily guarded concrete bunker labeled ZEBRA PRIME", "Research pressure chamber 1", "In an alley, with an Admiral", "Temporary duty barracks, heavy with dread"]
island = ["Ruins of an ancient temple", "Underground, with guns blazing", "German facility", "Strange pinnacle", "Driftwood shelter awash in blood", "Above a mass grave"]
doing = ["The surreal, silent engine room", "Crammed inside a blood-stained torpedo tube", "Partially-flooded pump room", "Officers' mess, now living up to its name", "Radio operator's station, from which creepy noises emanate", "The should-be-empty-now conning tower"]
keep = ["Torpedo room, with a primed 'fish' rolling on the deck", "Under a filthy rack", "Fresh water tank, where this thing should not be floating", "Ship's pantry, curiously empty", "Improvised sick bay in officer's country", "Inside the leaking oil sump"]
avoid = ["The now burnt-out Captain's quarters", "Outside, in crushing deep water", "In the black water tank", "In the Number 3 forward torpedo tube, forcibly jammed shut", "Ancient-looking steamer trunk with all the padlocks", "Battery room crawlspace"]

subs3 = [mission, base, island, doing, keep, avoid]

objects = ["Weapons", "Tools", "Missing and unaccounted for", "Strange Comfort", "Memories", "Disturbing"]
weap = ["Colt M1911 pistol", "M3A1 'grease gun'", "Big old galley knife", "Signal flare", "Marlin spike", "Aluminum pan of battery acid"]
tools = ["Over-used and damaged electrical saw", "A weirdly clean hammer", "Gigantic pipefitter's wrench", "'Momsen lung' submarine escape system", "Depth gage", "Unusual surgical instruments"]
missing = ["Cockwheel for torpedo tube 3", "Radio's microphone", "Captain's uniform", "Pills, lots of pills", "Half the boat's food supply", "Keys to the weapon locker"]
comfort = ["Unreliable compass with shattered glass", "Oil-stained and generally dog-eared bible", "Signed Art Tatum record with personal note", "Straight razor, flecks of dried blood on the blade", "Diary written in a dead language", "Carefully concealed bottle of whiskey"]
memories = ["Photo of a woman and two kids, 'Munchen, 1932' handwritten", "Photograph of a ghost aboard a submarine, marked SECRET", "Oil painting of the Saddlebacks' previous officers", "Erotic magazine, annotated in code", "Set of instructions for demon summoning", "Navy Cross in a velvet-lined box"]
disturb = ["Strange idol, bathed in deep sea muck", "List of 13 names, including the recently killed, some crossed off", "Broken hatch door with marks of fists in the metal", "Sealed orders", "The Shroud of Turin", "Diary of the cook, explaining that he poisoned everybody on board"]

subs4 = [weap, tools, missing, comfort, memories, disturb] 

i = 0
p = 0
r = 2
x = rand(0..1)
while i < 16
  if i < 8
    puts "Player (#{i/2+1}) and (#{i/2+2})"
    puts "#{relat[dice[i]-1]} (#{dice[i]}) #{subs[dice[i]-1][dice[i+1]-1]} (#{dice[i+1]})"
    puts
  end
  if i >= 7 and i < 10
    puts "Needs:"
    puts "#{needs[dice[i]-1]} (#{dice[i]}) #{subs2[dice[i]-1][dice[i+1]-1]} (#{dice[i+1]})"
    puts
  end
  if i >= 9 and p < x+1
    puts "Location:"
    puts "#{cat[dice[i]-1]} (#{dice[i]}) #{subs3[dice[i]-1][dice[i+1]-1]} (#{dice[i+1]})"
    puts
    p = p + 1
  end
  if i >= 12 + (2*x) and i < 16
    puts "Object:"
    puts "#{objects[dice[i]-1]} (#{dice[i]}) #{subs4[dice[i]-1][dice[i+1]-1]} (#{dice[i+1]})"
    puts
  end
i = i+2
end



