# Refresh Page 2 challenge displays with current status
# Each tree shows its primary challenge with status: Available / Active
# Challenge IDs: 1-2=Agility, 3=Dex, 4-5=Evasion, 6=Stealth, 7-8=Vitality,
#   9=Task, 10=Beast, 11=Vict, 12=Fish, 13-14=Mining, 15=Gather, 16=Black, 17=Exped
# Weekly IDs: 18-43 (2 per tree)
# Run as the player with menu open
# 2-column layout: shorter labels to fit columns

# Helper: store active challenge tree for comparison
scoreboard players operation #active_tree adv.temp = @s adv.chal_tree

# Row 0 — Agility: Marathon (chal 1) — walk 10k blocks
execute unless score @s adv.chal_id matches 1..2 unless score @s adv.chal_id matches 18..19 run data modify entity @e[type=text_display,tag=Adv.Chal0,limit=1,sort=nearest] text set value [{text:"Agility: ",color:"aqua"},{text:"Marathon",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 1 run data modify entity @e[type=text_display,tag=Adv.Chal0,limit=1,sort=nearest] text set value [{text:"Agility: ",color:"aqua"},{text:"Marathon",color:"white"},{text:" — Active",color:"green"}]
execute if score @s adv.chal_id matches 2 run data modify entity @e[type=text_display,tag=Adv.Chal0,limit=1,sort=nearest] text set value [{text:"Agility: ",color:"aqua"},{text:"Speedster",color:"white"},{text:" — Active",color:"green"}]
execute if score @s adv.chal_id matches 18 run data modify entity @e[type=text_display,tag=Adv.Chal0,limit=1,sort=nearest] text set value [{text:"Agility: ",color:"gold"},{text:"Wanderer",color:"gold"},{text:" — Active ★",color:"green"}]
execute if score @s adv.chal_id matches 19 run data modify entity @e[type=text_display,tag=Adv.Chal0,limit=1,sort=nearest] text set value [{text:"Agility: ",color:"gold"},{text:"Dash Master",color:"gold"},{text:" — Active ★",color:"green"}]
execute unless score @s adv.chal_id matches 1..2 unless score @s adv.chal_id matches 18..19 if score #adv_weekly_tree adv.temp matches 1 run data modify entity @e[type=text_display,tag=Adv.Chal0,limit=1,sort=nearest] text set value [{text:"Agility: ",color:"gold"},{text:"Marathon",color:"gold"},{text:" — Accept ★",color:"gold"}]

# Row 1 — Dexterity: Precision (chal 3) — hit 100 mobs
execute unless score @s adv.chal_id matches 3 unless score @s adv.chal_id matches 20..21 run data modify entity @e[type=text_display,tag=Adv.Chal1,limit=1,sort=nearest] text set value [{text:"Dexterity: ",color:"yellow"},{text:"Precision",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 3 run data modify entity @e[type=text_display,tag=Adv.Chal1,limit=1,sort=nearest] text set value [{text:"Dexterity: ",color:"yellow"},{text:"Precision",color:"white"},{text:" — Active",color:"green"}]
execute if score @s adv.chal_id matches 20 run data modify entity @e[type=text_display,tag=Adv.Chal1,limit=1,sort=nearest] text set value [{text:"Dexterity: ",color:"gold"},{text:"Sharpshooter",color:"gold"},{text:" — Active ★",color:"green"}]
execute if score @s adv.chal_id matches 21 run data modify entity @e[type=text_display,tag=Adv.Chal1,limit=1,sort=nearest] text set value [{text:"Dexterity: ",color:"gold"},{text:"Combo Artist",color:"gold"},{text:" — Active ★",color:"green"}]
execute unless score @s adv.chal_id matches 3 unless score @s adv.chal_id matches 20..21 if score #adv_weekly_tree adv.temp matches 2 run data modify entity @e[type=text_display,tag=Adv.Chal1,limit=1,sort=nearest] text set value [{text:"Dexterity: ",color:"gold"},{text:"Precision",color:"gold"},{text:" — Accept ★",color:"gold"}]

# Row 2 — Evasion: Master (chal 4) — dodge 20 hits
execute unless score @s adv.chal_id matches 4..5 unless score @s adv.chal_id matches 22..23 run data modify entity @e[type=text_display,tag=Adv.Chal2,limit=1,sort=nearest] text set value [{text:"Evasion: ",color:"white"},{text:"Master",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 4 run data modify entity @e[type=text_display,tag=Adv.Chal2,limit=1,sort=nearest] text set value [{text:"Evasion: ",color:"white"},{text:"Master",color:"white"},{text:" — Active",color:"green"}]
execute if score @s adv.chal_id matches 5 run data modify entity @e[type=text_display,tag=Adv.Chal2,limit=1,sort=nearest] text set value [{text:"Evasion: ",color:"white"},{text:"Timing",color:"white"},{text:" — Active",color:"green"}]
execute if score @s adv.chal_id matches 22 run data modify entity @e[type=text_display,tag=Adv.Chal2,limit=1,sort=nearest] text set value [{text:"Evasion: ",color:"gold"},{text:"Shadow Step",color:"gold"},{text:" — Active ★",color:"green"}]
execute if score @s adv.chal_id matches 23 run data modify entity @e[type=text_display,tag=Adv.Chal2,limit=1,sort=nearest] text set value [{text:"Evasion: ",color:"gold"},{text:"Ironwall",color:"gold"},{text:" — Active ★",color:"green"}]
execute unless score @s adv.chal_id matches 4..5 unless score @s adv.chal_id matches 22..23 if score #adv_weekly_tree adv.temp matches 3 run data modify entity @e[type=text_display,tag=Adv.Chal2,limit=1,sort=nearest] text set value [{text:"Evasion: ",color:"gold"},{text:"Master",color:"gold"},{text:" — Accept ★",color:"gold"}]

# Row 3 — Stealth: Assassin (chal 6)
execute unless score @s adv.chal_id matches 6 unless score @s adv.chal_id matches 24..25 run data modify entity @e[type=text_display,tag=Adv.Chal3,limit=1,sort=nearest] text set value [{text:"Stealth: ",color:"dark_gray"},{text:"Assassin",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 6 run data modify entity @e[type=text_display,tag=Adv.Chal3,limit=1,sort=nearest] text set value [{text:"Stealth: ",color:"dark_gray"},{text:"Assassin",color:"white"},{text:" — Active",color:"green"}]
execute if score @s adv.chal_id matches 24 run data modify entity @e[type=text_display,tag=Adv.Chal3,limit=1,sort=nearest] text set value [{text:"Stealth: ",color:"gold"},{text:"Silent Hunter",color:"gold"},{text:" — Active ★",color:"green"}]
execute if score @s adv.chal_id matches 25 run data modify entity @e[type=text_display,tag=Adv.Chal3,limit=1,sort=nearest] text set value [{text:"Stealth: ",color:"gold"},{text:"Ghost Walk",color:"gold"},{text:" — Active ★",color:"green"}]
execute unless score @s adv.chal_id matches 6 unless score @s adv.chal_id matches 24..25 if score #adv_weekly_tree adv.temp matches 4 run data modify entity @e[type=text_display,tag=Adv.Chal3,limit=1,sort=nearest] text set value [{text:"Stealth: ",color:"gold"},{text:"Assassin",color:"gold"},{text:" — Accept ★",color:"gold"}]

# Row 4 — Vitality: Warrior (chal 7)
execute unless score @s adv.chal_id matches 7..8 unless score @s adv.chal_id matches 26..27 run data modify entity @e[type=text_display,tag=Adv.Chal4,limit=1,sort=nearest] text set value [{text:"Vitality: ",color:"red"},{text:"Warrior",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 7 run data modify entity @e[type=text_display,tag=Adv.Chal4,limit=1,sort=nearest] text set value [{text:"Vitality: ",color:"red"},{text:"Warrior",color:"white"},{text:" — Active",color:"green"}]
execute if score @s adv.chal_id matches 8 run data modify entity @e[type=text_display,tag=Adv.Chal4,limit=1,sort=nearest] text set value [{text:"Vitality: ",color:"red"},{text:"Endurance",color:"white"},{text:" — Active",color:"green"}]
execute if score @s adv.chal_id matches 26 run data modify entity @e[type=text_display,tag=Adv.Chal4,limit=1,sort=nearest] text set value [{text:"Vitality: ",color:"gold"},{text:"Juggernaut",color:"gold"},{text:" — Active ★",color:"green"}]
execute if score @s adv.chal_id matches 27 run data modify entity @e[type=text_display,tag=Adv.Chal4,limit=1,sort=nearest] text set value [{text:"Vitality: ",color:"gold"},{text:"Immortal",color:"gold"},{text:" — Active ★",color:"green"}]
execute unless score @s adv.chal_id matches 7..8 unless score @s adv.chal_id matches 26..27 if score #adv_weekly_tree adv.temp matches 5 run data modify entity @e[type=text_display,tag=Adv.Chal4,limit=1,sort=nearest] text set value [{text:"Vitality: ",color:"gold"},{text:"Warrior",color:"gold"},{text:" — Accept ★",color:"gold"}]

# Row 5 — Taskmaster: Quests (chal 9)
execute unless score @s adv.chal_id matches 9 unless score @s adv.chal_id matches 28..29 run data modify entity @e[type=text_display,tag=Adv.Chal5,limit=1,sort=nearest] text set value [{text:"Taskmaster: ",color:"dark_purple"},{text:"Quests",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 9 run data modify entity @e[type=text_display,tag=Adv.Chal5,limit=1,sort=nearest] text set value [{text:"Taskmaster: ",color:"dark_purple"},{text:"Quests",color:"white"},{text:" — Active",color:"green"}]
execute if score @s adv.chal_id matches 28 run data modify entity @e[type=text_display,tag=Adv.Chal5,limit=1,sort=nearest] text set value [{text:"Taskmaster: ",color:"gold"},{text:"Completionist",color:"gold"},{text:" — Active ★",color:"green"}]
execute if score @s adv.chal_id matches 29 run data modify entity @e[type=text_display,tag=Adv.Chal5,limit=1,sort=nearest] text set value [{text:"Taskmaster: ",color:"gold"},{text:"Bounty Hunter",color:"gold"},{text:" — Active ★",color:"green"}]
execute unless score @s adv.chal_id matches 9 unless score @s adv.chal_id matches 28..29 if score #adv_weekly_tree adv.temp matches 6 run data modify entity @e[type=text_display,tag=Adv.Chal5,limit=1,sort=nearest] text set value [{text:"Taskmaster: ",color:"gold"},{text:"Quests",color:"gold"},{text:" — Accept ★",color:"gold"}]

# Row 6 — Beastmaster: Beasts (chal 10)
execute unless score @s adv.chal_id matches 10 unless score @s adv.chal_id matches 30..31 run data modify entity @e[type=text_display,tag=Adv.Chal6,limit=1,sort=nearest] text set value [{text:"Beastmaster: ",color:"green"},{text:"Beasts",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 10 run data modify entity @e[type=text_display,tag=Adv.Chal6,limit=1,sort=nearest] text set value [{text:"Beastmaster: ",color:"green"},{text:"Beasts",color:"white"},{text:" — Active",color:"green"}]
execute if score @s adv.chal_id matches 30 run data modify entity @e[type=text_display,tag=Adv.Chal6,limit=1,sort=nearest] text set value [{text:"Beastmaster: ",color:"gold"},{text:"Pack Leader",color:"gold"},{text:" — Active ★",color:"green"}]
execute if score @s adv.chal_id matches 31 run data modify entity @e[type=text_display,tag=Adv.Chal6,limit=1,sort=nearest] text set value [{text:"Beastmaster: ",color:"gold"},{text:"Beast Bond",color:"gold"},{text:" — Active ★",color:"green"}]
execute unless score @s adv.chal_id matches 10 unless score @s adv.chal_id matches 30..31 if score #adv_weekly_tree adv.temp matches 7 run data modify entity @e[type=text_display,tag=Adv.Chal6,limit=1,sort=nearest] text set value [{text:"Beastmaster: ",color:"gold"},{text:"Beasts",color:"gold"},{text:" — Accept ★",color:"gold"}]

# Row 7 — Victorian: Elegant (chal 11)
execute unless score @s adv.chal_id matches 11 unless score @s adv.chal_id matches 32..33 run data modify entity @e[type=text_display,tag=Adv.Chal7,limit=1,sort=nearest] text set value [{text:"Victorian: ",color:"dark_red"},{text:"Elegant",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 11 run data modify entity @e[type=text_display,tag=Adv.Chal7,limit=1,sort=nearest] text set value [{text:"Victorian: ",color:"dark_red"},{text:"Elegant",color:"white"},{text:" — Active",color:"green"}]
execute if score @s adv.chal_id matches 32 run data modify entity @e[type=text_display,tag=Adv.Chal7,limit=1,sort=nearest] text set value [{text:"Victorian: ",color:"gold"},{text:"Exterminator",color:"gold"},{text:" — Active ★",color:"green"}]
execute if score @s adv.chal_id matches 33 run data modify entity @e[type=text_display,tag=Adv.Chal7,limit=1,sort=nearest] text set value [{text:"Victorian: ",color:"gold"},{text:"Trade Master",color:"gold"},{text:" — Active ★",color:"green"}]
execute unless score @s adv.chal_id matches 11 unless score @s adv.chal_id matches 32..33 if score #adv_weekly_tree adv.temp matches 8 run data modify entity @e[type=text_display,tag=Adv.Chal7,limit=1,sort=nearest] text set value [{text:"Victorian: ",color:"gold"},{text:"Elegant",color:"gold"},{text:" — Accept ★",color:"gold"}]

# Row 8 — Fishing: Angler (chal 12)
execute unless score @s adv.chal_id matches 12 unless score @s adv.chal_id matches 34..35 run data modify entity @e[type=text_display,tag=Adv.Chal8,limit=1,sort=nearest] text set value [{text:"Fishing: ",color:"blue"},{text:"Angler",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 12 run data modify entity @e[type=text_display,tag=Adv.Chal8,limit=1,sort=nearest] text set value [{text:"Fishing: ",color:"blue"},{text:"Angler",color:"white"},{text:" — Active",color:"green"}]
execute if score @s adv.chal_id matches 34 run data modify entity @e[type=text_display,tag=Adv.Chal8,limit=1,sort=nearest] text set value [{text:"Fishing: ",color:"gold"},{text:"Deep Sea",color:"gold"},{text:" — Active ★",color:"green"}]
execute if score @s adv.chal_id matches 35 run data modify entity @e[type=text_display,tag=Adv.Chal8,limit=1,sort=nearest] text set value [{text:"Fishing: ",color:"gold"},{text:"Rain Fisher",color:"gold"},{text:" — Active ★",color:"green"}]
execute unless score @s adv.chal_id matches 12 unless score @s adv.chal_id matches 34..35 if score #adv_weekly_tree adv.temp matches 9 run data modify entity @e[type=text_display,tag=Adv.Chal8,limit=1,sort=nearest] text set value [{text:"Fishing: ",color:"gold"},{text:"Angler",color:"gold"},{text:" — Accept ★",color:"gold"}]

# Row 9 — Mining: Master (chal 13)
execute unless score @s adv.chal_id matches 13..14 unless score @s adv.chal_id matches 36..37 run data modify entity @e[type=text_display,tag=Adv.Chal9,limit=1,sort=nearest] text set value [{text:"Mining: ",color:"gold"},{text:"Master",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 13 run data modify entity @e[type=text_display,tag=Adv.Chal9,limit=1,sort=nearest] text set value [{text:"Mining: ",color:"gold"},{text:"Master",color:"white"},{text:" — Active",color:"green"}]
execute if score @s adv.chal_id matches 14 run data modify entity @e[type=text_display,tag=Adv.Chal9,limit=1,sort=nearest] text set value [{text:"Mining: ",color:"gold"},{text:"Deep Miner",color:"white"},{text:" — Active",color:"green"}]
execute if score @s adv.chal_id matches 36 run data modify entity @e[type=text_display,tag=Adv.Chal9,limit=1,sort=nearest] text set value [{text:"Mining: ",color:"gold"},{text:"Core Driller",color:"gold"},{text:" — Active ★",color:"green"}]
execute if score @s adv.chal_id matches 37 run data modify entity @e[type=text_display,tag=Adv.Chal9,limit=1,sort=nearest] text set value [{text:"Mining: ",color:"gold"},{text:"Gem Hunter",color:"gold"},{text:" — Active ★",color:"green"}]
execute unless score @s adv.chal_id matches 13..14 unless score @s adv.chal_id matches 36..37 if score #adv_weekly_tree adv.temp matches 10 run data modify entity @e[type=text_display,tag=Adv.Chal9,limit=1,sort=nearest] text set value [{text:"Mining: ",color:"gold"},{text:"Master",color:"gold"},{text:" — Accept ★",color:"gold"}]

# Row 10 — Gathering: Harvester (chal 15)
execute unless score @s adv.chal_id matches 15 unless score @s adv.chal_id matches 38..39 run data modify entity @e[type=text_display,tag=Adv.Chal10,limit=1,sort=nearest] text set value [{text:"Gathering: ",color:"green"},{text:"Harvester",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 15 run data modify entity @e[type=text_display,tag=Adv.Chal10,limit=1,sort=nearest] text set value [{text:"Gathering: ",color:"green"},{text:"Harvester",color:"white"},{text:" — Active",color:"green"}]
execute if score @s adv.chal_id matches 38 run data modify entity @e[type=text_display,tag=Adv.Chal10,limit=1,sort=nearest] text set value [{text:"Gathering: ",color:"gold"},{text:"Harvest Lord",color:"gold"},{text:" — Active ★",color:"green"}]
execute if score @s adv.chal_id matches 39 run data modify entity @e[type=text_display,tag=Adv.Chal10,limit=1,sort=nearest] text set value [{text:"Gathering: ",color:"gold"},{text:"Green Rev.",color:"gold"},{text:" — Active ★",color:"green"}]
execute unless score @s adv.chal_id matches 15 unless score @s adv.chal_id matches 38..39 if score #adv_weekly_tree adv.temp matches 11 run data modify entity @e[type=text_display,tag=Adv.Chal10,limit=1,sort=nearest] text set value [{text:"Gathering: ",color:"gold"},{text:"Harvester",color:"gold"},{text:" — Accept ★",color:"gold"}]

# Row 11 — Blacksmith: Smelter (chal 16)
execute unless score @s adv.chal_id matches 16 unless score @s adv.chal_id matches 40..41 run data modify entity @e[type=text_display,tag=Adv.Chal11,limit=1,sort=nearest] text set value [{text:"Blacksmith: ",color:"gray"},{text:"Smelter",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 16 run data modify entity @e[type=text_display,tag=Adv.Chal11,limit=1,sort=nearest] text set value [{text:"Blacksmith: ",color:"gray"},{text:"Smelter",color:"white"},{text:" — Active",color:"green"}]
execute if score @s adv.chal_id matches 40 run data modify entity @e[type=text_display,tag=Adv.Chal11,limit=1,sort=nearest] text set value [{text:"Blacksmith: ",color:"gold"},{text:"Master Smith",color:"gold"},{text:" — Active ★",color:"green"}]
execute if score @s adv.chal_id matches 41 run data modify entity @e[type=text_display,tag=Adv.Chal11,limit=1,sort=nearest] text set value [{text:"Blacksmith: ",color:"gold"},{text:"Furnace King",color:"gold"},{text:" — Active ★",color:"green"}]
execute unless score @s adv.chal_id matches 16 unless score @s adv.chal_id matches 40..41 if score #adv_weekly_tree adv.temp matches 12 run data modify entity @e[type=text_display,tag=Adv.Chal11,limit=1,sort=nearest] text set value [{text:"Blacksmith: ",color:"gold"},{text:"Smelter",color:"gold"},{text:" — Accept ★",color:"gold"}]

# Row 12 — Explorer: Explorer (chal 17)
execute unless score @s adv.chal_id matches 17 unless score @s adv.chal_id matches 42..43 run data modify entity @e[type=text_display,tag=Adv.Chal12,limit=1,sort=nearest] text set value [{text:"Explorer: ",color:"dark_aqua"},{text:"Explorer",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 17 run data modify entity @e[type=text_display,tag=Adv.Chal12,limit=1,sort=nearest] text set value [{text:"Explorer: ",color:"dark_aqua"},{text:"Explorer",color:"white"},{text:" — Active",color:"green"}]
execute if score @s adv.chal_id matches 42 run data modify entity @e[type=text_display,tag=Adv.Chal12,limit=1,sort=nearest] text set value [{text:"Explorer: ",color:"gold"},{text:"World Walker",color:"gold"},{text:" — Active ★",color:"green"}]
execute if score @s adv.chal_id matches 43 run data modify entity @e[type=text_display,tag=Adv.Chal12,limit=1,sort=nearest] text set value [{text:"Explorer: ",color:"gold"},{text:"Trailblazer",color:"gold"},{text:" — Active ★",color:"green"}]
execute unless score @s adv.chal_id matches 17 unless score @s adv.chal_id matches 42..43 if score #adv_weekly_tree adv.temp matches 13 run data modify entity @e[type=text_display,tag=Adv.Chal12,limit=1,sort=nearest] text set value [{text:"Explorer: ",color:"gold"},{text:"Explorer",color:"gold"},{text:" — Accept ★",color:"gold"}]
