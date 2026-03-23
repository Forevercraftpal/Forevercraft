# Roll a random Tier 5 (Expedition) quest — 35 quests available
execute store result score @s ec.quest_id_5 run random value 1..35

# Re-roll nether quests (3=Bastion, 7=Nether Star, 8=Fortress, 19=Nether Boss Hunter, 24=Netherite Arsenal, 30=Nether Star Hunt) if no nether access
execute if score @s ec.quest_id_5 matches 3 unless predicate evercraft:quests/has_entered_nether run return run function evercraft:quests/board/roll_tier5
execute if score @s ec.quest_id_5 matches 7..8 unless predicate evercraft:quests/has_entered_nether run return run function evercraft:quests/board/roll_tier5
execute if score @s ec.quest_id_5 matches 19 unless predicate evercraft:quests/has_entered_nether run return run function evercraft:quests/board/roll_tier5
execute if score @s ec.quest_id_5 matches 24 unless predicate evercraft:quests/has_entered_nether run return run function evercraft:quests/board/roll_tier5
execute if score @s ec.quest_id_5 matches 30 unless predicate evercraft:quests/has_entered_nether run return run function evercraft:quests/board/roll_tier5
# Re-roll end quests (2=End City, 4=Dragon's Breath, 29=Shulker Shell Hoard, 33=Dragon Breath Cache) if no end access
execute if score @s ec.quest_id_5 matches 2 unless predicate evercraft:quests/has_entered_end run return run function evercraft:quests/board/roll_tier5
execute if score @s ec.quest_id_5 matches 4 unless predicate evercraft:quests/has_entered_end run return run function evercraft:quests/board/roll_tier5
execute if score @s ec.quest_id_5 matches 29 unless predicate evercraft:quests/has_entered_end run return run function evercraft:quests/board/roll_tier5
execute if score @s ec.quest_id_5 matches 33 unless predicate evercraft:quests/has_entered_end run return run function evercraft:quests/board/roll_tier5

execute if score @s ec.quest_id_5 matches 1 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Elder Guardian Hunt",color:"white"},{text:" — Kill an Elder Guardian",color:"gray"}]
execute if score @s ec.quest_id_5 matches 2 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"End City Raid",color:"white"},{text:" — Explore an End City",color:"gray"}]
execute if score @s ec.quest_id_5 matches 3 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Bastion Plunder",color:"white"},{text:" — Explore a Bastion Remnant",color:"gray"}]
execute if score @s ec.quest_id_5 matches 4 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Dragon's Breath",color:"white"},{text:" — Gather 16 Dragon's Breath",color:"gray"}]
execute if score @s ec.quest_id_5 matches 5 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Heart of the Sea",color:"white"},{text:" — Find a Heart of the Sea",color:"gray"}]
execute if score @s ec.quest_id_5 matches 6 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Stronghold Delve",color:"white"},{text:" — Explore a Stronghold",color:"gray"}]
execute if score @s ec.quest_id_5 matches 7 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Nether Star Fragment",color:"white"},{text:" — Kill 50 Nether Mobs",color:"gray"}]
execute if score @s ec.quest_id_5 matches 8 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Fortress Conqueror",color:"white"},{text:" — Explore a Nether Fortress",color:"gray"}]
execute if score @s ec.quest_id_5 matches 9 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Mansion Raid",color:"white"},{text:" — Explore a Woodland Mansion",color:"gray"}]
execute if score @s ec.quest_id_5 matches 10 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Breeze Bounty",color:"white"},{text:" — Kill 10 Breezes",color:"gray"}]
execute if score @s ec.quest_id_5 matches 11 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Boss Slayer",color:"white"},{text:" — Defeat 3 World Bosses",color:"gray"}]
execute if score @s ec.quest_id_5 matches 12 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Dungeon Master",color:"white"},{text:" — Complete 5 Dungeons",color:"gray"}]
execute if score @s ec.quest_id_5 matches 13 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Head Chef",color:"white"},{text:" — Cook 50 Meals",color:"gray"}]
execute if score @s ec.quest_id_5 matches 14 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Lorekeeper",color:"white"},{text:" — Complete 3 Lore Sets",color:"gray"}]
execute if score @s ec.quest_id_5 matches 15 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Overworld Champion",color:"white"},{text:" — Defeat 3 Overworld Bosses",color:"gray"}]
execute if score @s ec.quest_id_5 matches 16 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Grand Transmuter",color:"white"},{text:" — Transmute 20 Items",color:"gray"}]
execute if score @s ec.quest_id_5 matches 17 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Runemaster",color:"white"},{text:" — Forge 12 Runes",color:"gray"}]
execute if score @s ec.quest_id_5 matches 18 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Feast for the Ages",color:"white"},{text:" — Cook 10 Feast Meals",color:"gray"}]
execute if score @s ec.quest_id_5 matches 19 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Nether Boss Hunter",color:"white"},{text:" — Defeat 2 Nether Bosses",color:"gray"}]
execute if score @s ec.quest_id_5 matches 20 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Complete Forager",color:"white"},{text:" — Forage 100 Bushes",color:"gray"}]
execute if score @s ec.quest_id_5 matches 21 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Master Prospector",color:"white"},{text:" — Prospect 100 Nodes",color:"gray"}]
execute if score @s ec.quest_id_5 matches 22 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Warden's Dare",color:"white"},{text:" — Defeat the Warden",color:"gray"}]
execute if score @s ec.quest_id_5 matches 23 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Triple Monument",color:"white"},{text:" — Explore 3 Monuments",color:"gray"}]
execute if score @s ec.quest_id_5 matches 24 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Netherite Arsenal",color:"white"},{text:" — Craft 4 Netherite Ingots",color:"gray"}]
execute if score @s ec.quest_id_5 matches 25 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Full Dungeon Tour",color:"white"},{text:" — Complete 5 Unique Dungeons",color:"gray"}]
execute if score @s ec.quest_id_5 matches 26 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Lore Scholar",color:"white"},{text:" — Complete 5 Lore Sets",color:"gray"}]
execute if score @s ec.quest_id_5 matches 27 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Multi-Village Chef",color:"white"},{text:" — Cook 40 Meals",color:"gray"}]
execute if score @s ec.quest_id_5 matches 28 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Stronghold Dive",color:"white"},{text:" — Explore 2 Strongholds",color:"gray"}]
execute if score @s ec.quest_id_5 matches 29 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Shulker Shell Hoard",color:"white"},{text:" — Gather 8 Shulker Shells",color:"gray"}]
execute if score @s ec.quest_id_5 matches 30 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Nether Star Hunt",color:"white"},{text:" — Defeat 3 Nether Bosses",color:"gray"}]
execute if score @s ec.quest_id_5 matches 31 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Rune Collection",color:"white"},{text:" — Forge 15 Runes",color:"gray"}]
execute if score @s ec.quest_id_5 matches 32 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Transmutation Mastery",color:"white"},{text:" — Transmute 30 Items",color:"gray"}]
execute if score @s ec.quest_id_5 matches 33 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Dragon Breath Cache",color:"white"},{text:" — Gather 32 Dragon's Breath",color:"gray"}]
execute if score @s ec.quest_id_5 matches 34 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Deep Dark Plunder",color:"white"},{text:" — Explore 2 Ancient Cities",color:"gray"}]
execute if score @s ec.quest_id_5 matches 35 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Trial Champion",color:"white"},{text:" — Explore 3 Trial Chambers",color:"gray"}]

# === Quest Type Tip ===
# Default: gather (1)
scoreboard players set #qtype ec.var 1
execute if score @s ec.quest_id_5 matches 1 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_5 matches 2..3 run scoreboard players set #qtype ec.var 8
execute if score @s ec.quest_id_5 matches 6 run scoreboard players set #qtype ec.var 8
execute if score @s ec.quest_id_5 matches 7 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_5 matches 8..9 run scoreboard players set #qtype ec.var 8
execute if score @s ec.quest_id_5 matches 10 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_5 matches 11 run scoreboard players set #qtype ec.var 12
execute if score @s ec.quest_id_5 matches 12 run scoreboard players set #qtype ec.var 9
execute if score @s ec.quest_id_5 matches 13 run scoreboard players set #qtype ec.var 6
execute if score @s ec.quest_id_5 matches 14 run scoreboard players set #qtype ec.var 7
execute if score @s ec.quest_id_5 matches 15 run scoreboard players set #qtype ec.var 12
execute if score @s ec.quest_id_5 matches 16 run scoreboard players set #qtype ec.var 11
execute if score @s ec.quest_id_5 matches 17 run scoreboard players set #qtype ec.var 10
execute if score @s ec.quest_id_5 matches 18 run scoreboard players set #qtype ec.var 6
execute if score @s ec.quest_id_5 matches 19 run scoreboard players set #qtype ec.var 12
execute if score @s ec.quest_id_5 matches 20 run scoreboard players set #qtype ec.var 3
execute if score @s ec.quest_id_5 matches 21 run scoreboard players set #qtype ec.var 4
execute if score @s ec.quest_id_5 matches 22 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_5 matches 23 run scoreboard players set #qtype ec.var 8
execute if score @s ec.quest_id_5 matches 24 run scoreboard players set #qtype ec.var 5
execute if score @s ec.quest_id_5 matches 25 run scoreboard players set #qtype ec.var 9
execute if score @s ec.quest_id_5 matches 26 run scoreboard players set #qtype ec.var 7
execute if score @s ec.quest_id_5 matches 27 run scoreboard players set #qtype ec.var 6
execute if score @s ec.quest_id_5 matches 28 run scoreboard players set #qtype ec.var 8
execute if score @s ec.quest_id_5 matches 30 run scoreboard players set #qtype ec.var 12
execute if score @s ec.quest_id_5 matches 31 run scoreboard players set #qtype ec.var 10
execute if score @s ec.quest_id_5 matches 32 run scoreboard players set #qtype ec.var 11
execute if score @s ec.quest_id_5 matches 34..35 run scoreboard players set #qtype ec.var 8
function evercraft:quests/tips/show
