# List all available challenges in chat
# Run as the player
# Trees with 2 variants assign one randomly (50/50) on accept

tellraw @s ""
tellraw @s [{text:" ══ ",color:"dark_purple"},{text:"All Challenges",color:"gold",bold:true},{text:" ══",color:"dark_purple"}]
tellraw @s [{text:" Trees with two challenges assign one at random.",color:"dark_gray",italic:true}]
tellraw @s ""

# Agility (2 variants)
tellraw @s [{text:" Agility",color:"aqua",bold:true},{text:" (random)",color:"dark_gray",italic:true}]
tellraw @s [{text:"  Marathon",color:"white"},{text:" — Walk 10,000 blocks",color:"gray"},{text:" (100 XP + 10 tokens)",color:"dark_gray"}]
tellraw @s [{text:"  Speedster",color:"white"},{text:" — Sprint 60s nonstop",color:"gray"},{text:" (15 XP + 1 token)",color:"dark_gray"}]

# Dexterity
tellraw @s [{text:" Dexterity",color:"yellow",bold:true}]
tellraw @s [{text:"  Marksman",color:"white"},{text:" — Land 50 attacks on mobs",color:"gray"},{text:" (30 XP + 3 tokens)",color:"dark_gray"}]

# Evasion (2 variants)
tellraw @s [{text:" Evasion",color:"white",bold:true},{text:" (random)",color:"dark_gray",italic:true}]
tellraw @s [{text:"  Ghost",color:"white"},{text:" — Dodge 50 attacks",color:"gray"},{text:" (77 XP + 7 tokens)",color:"dark_gray"}]
tellraw @s [{text:"  Untouched",color:"white"},{text:" — No damage for 10 min",color:"gray"},{text:" (30 XP + 3 tokens)",color:"dark_gray"}]

# Stealth
tellraw @s [{text:" Stealth",color:"dark_gray",bold:true}]
tellraw @s [{text:"  Phantom",color:"white"},{text:" — Sneak 5,000 blocks",color:"gray"},{text:" (50 XP + 5 tokens)",color:"dark_gray"}]

# Vitality (2 variants)
tellraw @s [{text:" Vitality",color:"red",bold:true},{text:" (random)",color:"dark_gray",italic:true}]
tellraw @s [{text:"  Tank",color:"white"},{text:" — Take 200 damage",color:"gray"},{text:" (50 XP + 5 tokens)",color:"dark_gray"}]
tellraw @s [{text:"  Deathless",color:"white"},{text:" — Don't die for 7 days",color:"gray"},{text:" (77 XP + 7 tokens)",color:"dark_gray"}]

# Taskmaster
tellraw @s [{text:" Taskmaster",color:"dark_purple",bold:true}]
tellraw @s [{text:"  Grinder",color:"white"},{text:" — Complete 25 quests",color:"gray"},{text:" (100 XP + 10 tokens)",color:"dark_gray"}]

# Beastmaster
tellraw @s [{text:" Beastmaster",color:"green",bold:true}]
tellraw @s [{text:"  Pack Alpha",color:"white"},{text:" — Max 3 pets",color:"gray"},{text:" (50 XP + 5 tokens)",color:"dark_gray"}]

# Victorian
tellraw @s [{text:" Victorian",color:"dark_red",bold:true}]
tellraw @s [{text:"  Slayer",color:"white"},{text:" — Kill 500 mobs",color:"gray"},{text:" (100 XP + 10 tokens)",color:"dark_gray"}]

# Fishing
tellraw @s [{text:" Fishing",color:"blue",bold:true}]
tellraw @s [{text:"  Perfect Cast",color:"white"},{text:" — Catch 100 fish",color:"gray"},{text:" (15 XP + 1 token)",color:"dark_gray"}]

# Mining (2 variants)
tellraw @s [{text:" Mining",color:"gold",bold:true},{text:" (random)",color:"dark_gray",italic:true}]
tellraw @s [{text:"  Deep Core",color:"white"},{text:" — Mine 5,000 blocks",color:"gray"},{text:" (100 XP + 10 tokens)",color:"dark_gray"}]
tellraw @s [{text:"  Fortunate",color:"white"},{text:" — Mine 500 ores",color:"gray"},{text:" (15 XP + 1 token)",color:"dark_gray"}]

# Gathering
tellraw @s [{text:" Gathering",color:"green",bold:true}]
tellraw @s [{text:"  Green Thumb",color:"white"},{text:" — Harvest 1,000 crops",color:"gray"},{text:" (50 XP + 5 tokens)",color:"dark_gray"}]

# Blacksmith
tellraw @s [{text:" Blacksmith",color:"gray",bold:true}]
tellraw @s [{text:"  Iron Chef",color:"white"},{text:" — Smelt 500 items",color:"gray"},{text:" (50 XP + 5 tokens)",color:"dark_gray"}]

# Explorer
tellraw @s [{text:" Expeditionist",color:"dark_aqua",bold:true}]
tellraw @s [{text:"  Cartographer",color:"white"},{text:" — Find 10 structure crates",color:"gray"},{text:" (50 XP + 5 tokens)",color:"dark_gray"}]

tellraw @s ""
tellraw @s [{text:" Cancelling a challenge locks you out for 1 day.",color:"dark_gray",italic:true}]
