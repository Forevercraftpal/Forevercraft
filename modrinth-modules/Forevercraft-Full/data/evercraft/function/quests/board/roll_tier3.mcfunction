# Roll a random Tier 3 (Contract) quest — 43 quests available
execute store result score @s ec.quest_id_3 run random value 1..43

# Re-roll nether quests (9=Blaze Hunter, 10=Ancient Debris, 22=Wither Skeleton Hunter, 40=Piglin Brute Bounty) if player hasn't entered nether
execute if score @s ec.quest_id_3 matches 9..10 unless predicate evercraft:quests/has_entered_nether run return run function evercraft:quests/board/roll_tier3
execute if score @s ec.quest_id_3 matches 22 unless predicate evercraft:quests/has_entered_nether run return run function evercraft:quests/board/roll_tier3
execute if score @s ec.quest_id_3 matches 40 unless predicate evercraft:quests/has_entered_nether run return run function evercraft:quests/board/roll_tier3
# Re-roll end quests (23=Shulker Boxing, 43=End Rod Collector) if player hasn't entered end
execute if score @s ec.quest_id_3 matches 23 unless predicate evercraft:quests/has_entered_end run return run function evercraft:quests/board/roll_tier3
execute if score @s ec.quest_id_3 matches 43 unless predicate evercraft:quests/has_entered_end run return run function evercraft:quests/board/roll_tier3

# Show reveal (only runs on final roll due to returns above)
execute if score @s ec.quest_id_3 matches 1 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Gold Rush",color:"white"},{text:" — Gather 24 Gold Ingots",color:"gray"}]
execute if score @s ec.quest_id_3 matches 2 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Enderman Bounty",color:"white"},{text:" — Kill 8 Endermen",color:"gray"}]
execute if score @s ec.quest_id_3 matches 3 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Diamond Seeker",color:"white"},{text:" — Gather 8 Diamonds",color:"gray"}]
execute if score @s ec.quest_id_3 matches 4 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Cave Spider Nest",color:"white"},{text:" — Kill 15 Cave Spiders",color:"gray"}]
execute if score @s ec.quest_id_3 matches 5 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Obsidian Quarry",color:"white"},{text:" — Gather 16 Obsidian",color:"gray"}]
execute if score @s ec.quest_id_3 matches 6 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Witch Bounty",color:"white"},{text:" — Kill 5 Witches",color:"gray"}]
execute if score @s ec.quest_id_3 matches 7 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Enchanted Gear",color:"white"},{text:" — Craft 4 Enchanted Books",color:"gray"}]
execute if score @s ec.quest_id_3 matches 8 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Prismarine Diver",color:"white"},{text:" — Gather 32 Prismarine",color:"gray"}]
execute if score @s ec.quest_id_3 matches 9 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Blaze Hunter",color:"white"},{text:" — Kill 8 Blazes",color:"gray"}]
execute if score @s ec.quest_id_3 matches 10 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Ancient Debris",color:"white"},{text:" — Gather 4 Ancient Debris",color:"gray"}]
execute if score @s ec.quest_id_3 matches 11 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Guardian Slayer",color:"white"},{text:" — Kill 6 Guardians",color:"gray"}]
execute if score @s ec.quest_id_3 matches 12 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Amethyst Miner",color:"white"},{text:" — Gather 24 Amethyst Shards",color:"gray"}]
execute if score @s ec.quest_id_3 matches 13 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Trail Explorer",color:"white"},{text:" — Find Trail Ruins",color:"gray"}]
execute if score @s ec.quest_id_3 matches 14 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Culinary Contract",color:"white"},{text:" — Cook 10 Meals",color:"gray"}]
execute if score @s ec.quest_id_3 matches 15 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Prospector's Haul",color:"white"},{text:" — Prospect 20 Nodes",color:"gray"}]
execute if score @s ec.quest_id_3 matches 16 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Forgotten Fragments",color:"white"},{text:" — Find 8 Lore Fragments",color:"gray"}]
execute if score @s ec.quest_id_3 matches 17 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Forager's Bounty",color:"white"},{text:" — Forage 25 Bushes",color:"gray"}]
execute if score @s ec.quest_id_3 matches 18 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Dungeon Delver",color:"white"},{text:" — Complete 1 Dungeon",color:"gray"}]
execute if score @s ec.quest_id_3 matches 19 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Battle Cook",color:"white"},{text:" — Cook 8 Combat Meals",color:"gray"}]
execute if score @s ec.quest_id_3 matches 20 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Iron Vein Mastery",color:"white"},{text:" — Prospect 25 Nodes",color:"gray"}]
execute if score @s ec.quest_id_3 matches 21 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Deep Lore",color:"white"},{text:" — Find 12 Lore Fragments",color:"gray"}]
execute if score @s ec.quest_id_3 matches 22 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Wither Skeleton Hunter",color:"white"},{text:" — Kill 10 Wither Skeletons",color:"gray"}]
execute if score @s ec.quest_id_3 matches 23 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Shulker Boxing",color:"white"},{text:" — Gather 2 Shulker Shells",color:"gray"}]
execute if score @s ec.quest_id_3 matches 24 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Echo Shard Seeker",color:"white"},{text:" — Gather 4 Echo Shards",color:"gray"}]
execute if score @s ec.quest_id_3 matches 25 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Breeze Blitz",color:"white"},{text:" — Kill 5 Breezes",color:"gray"}]
execute if score @s ec.quest_id_3 matches 26 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Village Feast",color:"white"},{text:" — Cook 15 Meals",color:"gray"}]
execute if score @s ec.quest_id_3 matches 27 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Nether Forager",color:"white"},{text:" — Forage 30 Bushes",color:"gray"}]
execute if score @s ec.quest_id_3 matches 28 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Mining Expedition",color:"white"},{text:" — Prospect 30 Nodes",color:"gray"}]
execute if score @s ec.quest_id_3 matches 29 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Rune Apprentice",color:"white"},{text:" — Forge 1 Rune",color:"gray"}]
execute if score @s ec.quest_id_3 matches 30 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Transmutation Trial",color:"white"},{text:" — Transmute 2 Items",color:"gray"}]
execute if score @s ec.quest_id_3 matches 31 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Ravager Rematch",color:"white"},{text:" — Kill 1 Ravager",color:"gray"}]
execute if score @s ec.quest_id_3 matches 32 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Warden Fragment",color:"white"},{text:" — Gather 4 Sculk Catalysts",color:"gray"}]
execute if score @s ec.quest_id_3 matches 33 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Elder Shard",color:"white"},{text:" — Kill 1 Elder Guardian",color:"gray"}]
execute if score @s ec.quest_id_3 matches 34 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Deep Dark Harvest",color:"white"},{text:" — Prospect 15 Nodes",color:"gray"}]
execute if score @s ec.quest_id_3 matches 35 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Feast Preparation",color:"white"},{text:" — Cook 3 Feast Meals",color:"gray"}]
execute if score @s ec.quest_id_3 matches 36 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Story Collector",color:"white"},{text:" — Find 15 Lore Fragments",color:"gray"}]
execute if score @s ec.quest_id_3 matches 37 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Wilderness Survey",color:"white"},{text:" — Forage 35 Bushes",color:"gray"}]
execute if score @s ec.quest_id_3 matches 38 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Sniffer Egg Hunt",color:"white"},{text:" — Gather 1 Sniffer Egg",color:"gray"}]
execute if score @s ec.quest_id_3 matches 39 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Trial Key Seeker",color:"white"},{text:" — Gather 2 Trial Keys",color:"gray"}]
execute if score @s ec.quest_id_3 matches 40 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Piglin Brute Bounty",color:"white"},{text:" — Kill 3 Piglin Brutes",color:"gray"}]
execute if score @s ec.quest_id_3 matches 41 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Trident Recovery",color:"white"},{text:" — Gather 1 Trident",color:"gray"}]
execute if score @s ec.quest_id_3 matches 42 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Heavy Core Salvage",color:"white"},{text:" — Gather 1 Heavy Core",color:"gray"}]
execute if score @s ec.quest_id_3 matches 43 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"End Rod Collector",color:"white"},{text:" — Gather 16 End Rods",color:"gray"}]

# === Quest Type Tip ===
# Default: gather (1)
scoreboard players set #qtype ec.var 1
execute if score @s ec.quest_id_3 matches 2 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_3 matches 4 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_3 matches 6 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_3 matches 7 run scoreboard players set #qtype ec.var 5
execute if score @s ec.quest_id_3 matches 9 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_3 matches 11 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_3 matches 13 run scoreboard players set #qtype ec.var 8
execute if score @s ec.quest_id_3 matches 14 run scoreboard players set #qtype ec.var 6
execute if score @s ec.quest_id_3 matches 15 run scoreboard players set #qtype ec.var 4
execute if score @s ec.quest_id_3 matches 16 run scoreboard players set #qtype ec.var 7
execute if score @s ec.quest_id_3 matches 17 run scoreboard players set #qtype ec.var 3
execute if score @s ec.quest_id_3 matches 18 run scoreboard players set #qtype ec.var 9
execute if score @s ec.quest_id_3 matches 19 run scoreboard players set #qtype ec.var 6
execute if score @s ec.quest_id_3 matches 20 run scoreboard players set #qtype ec.var 4
execute if score @s ec.quest_id_3 matches 21 run scoreboard players set #qtype ec.var 7
execute if score @s ec.quest_id_3 matches 22 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_3 matches 25 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_3 matches 26 run scoreboard players set #qtype ec.var 6
execute if score @s ec.quest_id_3 matches 27 run scoreboard players set #qtype ec.var 3
execute if score @s ec.quest_id_3 matches 28 run scoreboard players set #qtype ec.var 4
execute if score @s ec.quest_id_3 matches 29 run scoreboard players set #qtype ec.var 10
execute if score @s ec.quest_id_3 matches 30 run scoreboard players set #qtype ec.var 11
execute if score @s ec.quest_id_3 matches 31 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_3 matches 33 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_3 matches 34 run scoreboard players set #qtype ec.var 4
execute if score @s ec.quest_id_3 matches 35 run scoreboard players set #qtype ec.var 6
execute if score @s ec.quest_id_3 matches 36 run scoreboard players set #qtype ec.var 7
execute if score @s ec.quest_id_3 matches 37 run scoreboard players set #qtype ec.var 3
execute if score @s ec.quest_id_3 matches 40 run scoreboard players set #qtype ec.var 2
function evercraft:quests/tips/show
