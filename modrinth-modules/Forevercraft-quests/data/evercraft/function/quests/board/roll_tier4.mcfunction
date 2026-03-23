# Roll a random Tier 4 (Commission) quest — 42 quests available
execute store result score @s ec.quest_id_4 run random value 1..42

# Re-roll nether quests (1=Wither Skeletons, 3=Netherite, 9=Piglin Brutes, 35=Netherite Smith, 40=Ancient Debris Stash) if no nether access
execute if score @s ec.quest_id_4 matches 1 unless predicate evercraft:quests/has_entered_nether run return run function evercraft:quests/board/roll_tier4
execute if score @s ec.quest_id_4 matches 3 unless predicate evercraft:quests/has_entered_nether run return run function evercraft:quests/board/roll_tier4
execute if score @s ec.quest_id_4 matches 9 unless predicate evercraft:quests/has_entered_nether run return run function evercraft:quests/board/roll_tier4
execute if score @s ec.quest_id_4 matches 35 unless predicate evercraft:quests/has_entered_nether run return run function evercraft:quests/board/roll_tier4
execute if score @s ec.quest_id_4 matches 40 unless predicate evercraft:quests/has_entered_nether run return run function evercraft:quests/board/roll_tier4
# Re-roll end quests (2=Shulker Shells) if no end access
execute if score @s ec.quest_id_4 matches 2 unless predicate evercraft:quests/has_entered_end run return run function evercraft:quests/board/roll_tier4

# Show reveal (only runs on final roll due to returns above)
execute if score @s ec.quest_id_4 matches 1 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Wither Skeleton Skulls",color:"white"},{text:" — Kill 20 Wither Skeletons",color:"gray"}]
execute if score @s ec.quest_id_4 matches 2 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Shulker Shells",color:"white"},{text:" — Gather 4 Shulker Shells",color:"gray"}]
execute if score @s ec.quest_id_4 matches 3 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Netherite Scrap",color:"white"},{text:" — Gather 4 Netherite Scrap",color:"gray"}]
execute if score @s ec.quest_id_4 matches 4 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Pillager Raid",color:"white"},{text:" — Kill 25 Pillagers",color:"gray"}]
execute if score @s ec.quest_id_4 matches 5 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Ocean Monument Run",color:"white"},{text:" — Explore an Ocean Monument",color:"gray"}]
execute if score @s ec.quest_id_4 matches 6 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Deep Dark Expedition",color:"white"},{text:" — Explore an Ancient City",color:"gray"}]
execute if score @s ec.quest_id_4 matches 7 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Evoker Bounty",color:"white"},{text:" — Kill 3 Evokers",color:"gray"}]
execute if score @s ec.quest_id_4 matches 8 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Trial Chamber Scout",color:"white"},{text:" — Explore a Trial Chamber",color:"gray"}]
execute if score @s ec.quest_id_4 matches 9 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Piglin Brute Bounty",color:"white"},{text:" — Kill 5 Piglin Brutes",color:"gray"}]
execute if score @s ec.quest_id_4 matches 10 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Emerald Hoard",color:"white"},{text:" — Gather 64 Emeralds",color:"gray"}]
execute if score @s ec.quest_id_4 matches 11 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Warden's Shadow",color:"white"},{text:" — Explore the Deep Dark",color:"gray"}]
execute if score @s ec.quest_id_4 matches 12 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Ravager Slayer",color:"white"},{text:" — Kill 2 Ravagers",color:"gray"}]
execute if score @s ec.quest_id_4 matches 13 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Boss Hunter",color:"white"},{text:" — Defeat 1 Boss",color:"gray"}]
execute if score @s ec.quest_id_4 matches 14 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Master Chef",color:"white"},{text:" — Cook 25 Meals",color:"gray"}]
execute if score @s ec.quest_id_4 matches 15 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Rune Smith",color:"white"},{text:" — Forge 3 Runes",color:"gray"}]
execute if score @s ec.quest_id_4 matches 16 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Transmuter's Art",color:"white"},{text:" — Transmute 5 Items",color:"gray"}]
execute if score @s ec.quest_id_4 matches 17 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Dungeon Crawler",color:"white"},{text:" — Complete 2 Dungeons",color:"gray"}]
execute if score @s ec.quest_id_4 matches 18 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Lore Archaeologist",color:"white"},{text:" — Complete 1 Lore Set",color:"gray"}]
execute if score @s ec.quest_id_4 matches 19 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Veteran Forager",color:"white"},{text:" — Forage 50 Bushes",color:"gray"}]
execute if score @s ec.quest_id_4 matches 20 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Grand Prospector",color:"white"},{text:" — Prospect 50 Nodes",color:"gray"}]
execute if score @s ec.quest_id_4 matches 21 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Conqueror's Feast",color:"white"},{text:" — Cook 5 Feast Meals",color:"gray"}]
execute if score @s ec.quest_id_4 matches 22 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Ancient Lore",color:"white"},{text:" — Find 25 Lore Fragments",color:"gray"}]
execute if score @s ec.quest_id_4 matches 23 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Battle Rations",color:"white"},{text:" — Cook 20 Meals",color:"gray"}]
execute if score @s ec.quest_id_4 matches 24 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Totem Seeker",color:"white"},{text:" — Defeat 2 Bosses",color:"gray"}]
execute if score @s ec.quest_id_4 matches 25 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Netherwalker",color:"white"},{text:" — Explore 2 Nether Fortresses",color:"gray"}]
execute if score @s ec.quest_id_4 matches 26 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Dungeon Sprint",color:"white"},{text:" — Complete 3 Dungeons",color:"gray"}]
execute if score @s ec.quest_id_4 matches 27 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Rune Enchanter",color:"white"},{text:" — Forge 5 Runes",color:"gray"}]
execute if score @s ec.quest_id_4 matches 28 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"End Island Chain",color:"white"},{text:" — Explore 2 End Cities",color:"gray"}]
execute if score @s ec.quest_id_4 matches 29 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Transmuter's Gambit",color:"white"},{text:" — Transmute 10 Items",color:"gray"}]
execute if score @s ec.quest_id_4 matches 30 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Wild Gourmet",color:"white"},{text:" — Cook 30 Meals",color:"gray"}]
execute if score @s ec.quest_id_4 matches 31 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Deep Miner",color:"white"},{text:" — Prospect 75 Nodes",color:"gray"}]
execute if score @s ec.quest_id_4 matches 32 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Forgotten Library",color:"white"},{text:" — Complete 2 Lore Sets",color:"gray"}]
execute if score @s ec.quest_id_4 matches 33 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Elder Guardian Pair",color:"white"},{text:" — Kill 2 Elder Guardians",color:"gray"}]
execute if score @s ec.quest_id_4 matches 34 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Trial Chamber Sweep",color:"white"},{text:" — Explore 2 Trial Chambers",color:"gray"}]
execute if score @s ec.quest_id_4 matches 35 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Netherite Smith",color:"white"},{text:" — Craft 2 Netherite Ingots",color:"gray"}]
execute if score @s ec.quest_id_4 matches 36 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Diamond Hoard",color:"white"},{text:" — Gather 32 Diamonds",color:"gray"}]
execute if score @s ec.quest_id_4 matches 37 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Monument Plunder",color:"white"},{text:" — Explore 2 Monuments",color:"gray"}]
execute if score @s ec.quest_id_4 matches 38 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Bastion Raid",color:"white"},{text:" — Explore 2 Bastion Remnants",color:"gray"}]
execute if score @s ec.quest_id_4 matches 39 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Nether Cuisine",color:"white"},{text:" — Cook 30 Meals",color:"gray"}]
execute if score @s ec.quest_id_4 matches 40 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Ancient Debris Stash",color:"white"},{text:" — Gather 8 Ancient Debris",color:"gray"}]
execute if score @s ec.quest_id_4 matches 41 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Evoker Circle",color:"white"},{text:" — Kill 5 Evokers",color:"gray"}]
execute if score @s ec.quest_id_4 matches 42 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Runic Master",color:"white"},{text:" — Forge 8 Runes",color:"gray"}]

# === Quest Type Tip ===
# Default: gather (1)
scoreboard players set #qtype ec.var 1
execute if score @s ec.quest_id_4 matches 1 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_4 matches 4 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_4 matches 5..6 run scoreboard players set #qtype ec.var 8
execute if score @s ec.quest_id_4 matches 7 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_4 matches 8 run scoreboard players set #qtype ec.var 8
execute if score @s ec.quest_id_4 matches 9 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_4 matches 11 run scoreboard players set #qtype ec.var 8
execute if score @s ec.quest_id_4 matches 12 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_4 matches 13 run scoreboard players set #qtype ec.var 12
execute if score @s ec.quest_id_4 matches 14 run scoreboard players set #qtype ec.var 6
execute if score @s ec.quest_id_4 matches 15 run scoreboard players set #qtype ec.var 10
execute if score @s ec.quest_id_4 matches 16 run scoreboard players set #qtype ec.var 11
execute if score @s ec.quest_id_4 matches 17 run scoreboard players set #qtype ec.var 9
execute if score @s ec.quest_id_4 matches 18 run scoreboard players set #qtype ec.var 7
execute if score @s ec.quest_id_4 matches 19 run scoreboard players set #qtype ec.var 3
execute if score @s ec.quest_id_4 matches 20 run scoreboard players set #qtype ec.var 4
execute if score @s ec.quest_id_4 matches 21 run scoreboard players set #qtype ec.var 6
execute if score @s ec.quest_id_4 matches 22 run scoreboard players set #qtype ec.var 7
execute if score @s ec.quest_id_4 matches 23 run scoreboard players set #qtype ec.var 6
execute if score @s ec.quest_id_4 matches 24 run scoreboard players set #qtype ec.var 12
execute if score @s ec.quest_id_4 matches 25 run scoreboard players set #qtype ec.var 8
execute if score @s ec.quest_id_4 matches 26 run scoreboard players set #qtype ec.var 9
execute if score @s ec.quest_id_4 matches 27 run scoreboard players set #qtype ec.var 10
execute if score @s ec.quest_id_4 matches 28 run scoreboard players set #qtype ec.var 8
execute if score @s ec.quest_id_4 matches 29 run scoreboard players set #qtype ec.var 11
execute if score @s ec.quest_id_4 matches 30 run scoreboard players set #qtype ec.var 6
execute if score @s ec.quest_id_4 matches 31 run scoreboard players set #qtype ec.var 4
execute if score @s ec.quest_id_4 matches 32 run scoreboard players set #qtype ec.var 7
execute if score @s ec.quest_id_4 matches 33 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_4 matches 34 run scoreboard players set #qtype ec.var 8
execute if score @s ec.quest_id_4 matches 35 run scoreboard players set #qtype ec.var 5
execute if score @s ec.quest_id_4 matches 37..38 run scoreboard players set #qtype ec.var 8
execute if score @s ec.quest_id_4 matches 39 run scoreboard players set #qtype ec.var 6
execute if score @s ec.quest_id_4 matches 41 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_4 matches 42 run scoreboard players set #qtype ec.var 10
function evercraft:quests/tips/show
