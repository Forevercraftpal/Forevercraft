# Roll a random Tier 2 (Task) quest — 50 quests available
execute store result score @s ec.quest_id_2 run random value 1..50

# Re-roll nether quests if player hasn't entered nether (29=Piglin Skirmish, 30=Magma Cube Burst, 38=Hoglin Hunter, 42=Nether Brick Supply, 43=Blaze Powder, 49=Ghast Tear Run)
execute if score @s ec.quest_id_2 matches 29 unless predicate evercraft:quests/has_entered_nether run return run function evercraft:quests/board/roll_tier2
execute if score @s ec.quest_id_2 matches 30 unless predicate evercraft:quests/has_entered_nether run return run function evercraft:quests/board/roll_tier2
execute if score @s ec.quest_id_2 matches 38 unless predicate evercraft:quests/has_entered_nether run return run function evercraft:quests/board/roll_tier2
execute if score @s ec.quest_id_2 matches 42 unless predicate evercraft:quests/has_entered_nether run return run function evercraft:quests/board/roll_tier2
execute if score @s ec.quest_id_2 matches 43 unless predicate evercraft:quests/has_entered_nether run return run function evercraft:quests/board/roll_tier2
execute if score @s ec.quest_id_2 matches 49 unless predicate evercraft:quests/has_entered_nether run return run function evercraft:quests/board/roll_tier2

# Re-roll end quests if player hasn't entered the end (44=Chorus Fruit Picker)
execute if score @s ec.quest_id_2 matches 44 unless predicate evercraft:quests/has_entered_end run return run function evercraft:quests/board/roll_tier2

# Show reveal (only runs on final roll due to return above)
execute if score @s ec.quest_id_2 matches 1 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Iron Prospector",color:"white"},{text:" — Gather 32 Raw Iron",color:"gray"}]
execute if score @s ec.quest_id_2 matches 2 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Skeleton Slayer",color:"white"},{text:" — Kill 15 Skeletons",color:"gray"}]
execute if score @s ec.quest_id_2 matches 3 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Cactus Trader",color:"white"},{text:" — Gather 32 Cactus",color:"gray"}]
execute if score @s ec.quest_id_2 matches 4 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Bamboo Harvest",color:"white"},{text:" — Gather 64 Bamboo",color:"gray"}]
execute if score @s ec.quest_id_2 matches 5 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Creeper Hunter",color:"white"},{text:" — Kill 10 Creepers",color:"gray"}]
execute if score @s ec.quest_id_2 matches 6 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Bookshelf Builder",color:"white"},{text:" — Craft 8 Bookshelves",color:"gray"}]
execute if score @s ec.quest_id_2 matches 7 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Ice Collector",color:"white"},{text:" — Gather 32 Packed Ice",color:"gray"}]
execute if score @s ec.quest_id_2 matches 8 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Honey Gatherer",color:"white"},{text:" — Gather 8 Honey Bottles",color:"gray"}]
execute if score @s ec.quest_id_2 matches 9 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Pumpkin Farmer",color:"white"},{text:" — Gather 24 Pumpkins",color:"gray"}]
execute if score @s ec.quest_id_2 matches 10 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Redstone Miner",color:"white"},{text:" — Gather 32 Redstone",color:"gray"}]
execute if score @s ec.quest_id_2 matches 11 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Drowned Hunter",color:"white"},{text:" — Kill 12 Drowned",color:"gray"}]
execute if score @s ec.quest_id_2 matches 12 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Lantern Crafter",color:"white"},{text:" — Craft 16 Lanterns",color:"gray"}]
execute if score @s ec.quest_id_2 matches 13 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Copper Collector",color:"white"},{text:" — Gather 48 Raw Copper",color:"gray"}]
execute if score @s ec.quest_id_2 matches 14 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Melon Farm",color:"white"},{text:" — Gather 32 Melon Slices",color:"gray"}]
execute if score @s ec.quest_id_2 matches 15 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Phantasm Defense",color:"white"},{text:" — Kill 5 Phantoms",color:"gray"}]
execute if score @s ec.quest_id_2 matches 16 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Wilderness Forager",color:"white"},{text:" — Forage 10 Bushes",color:"gray"}]
execute if score @s ec.quest_id_2 matches 17 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Vein Tapper",color:"white"},{text:" — Prospect 8 Nodes",color:"gray"}]
execute if score @s ec.quest_id_2 matches 18 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Battle Stew",color:"white"},{text:" — Cook 3 Combat Meals",color:"gray"}]
execute if score @s ec.quest_id_2 matches 19 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Miner's Lunch",color:"white"},{text:" — Cook 3 Mining Meals",color:"gray"}]
execute if score @s ec.quest_id_2 matches 20 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Fragment Hunter",color:"white"},{text:" — Find 3 Lore Fragments",color:"gray"}]
execute if score @s ec.quest_id_2 matches 21 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Lapis Miner",color:"white"},{text:" — Gather 32 Lapis Lazuli",color:"gray"}]
execute if score @s ec.quest_id_2 matches 22 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Gold Panner",color:"white"},{text:" — Gather 16 Raw Gold",color:"gray"}]
execute if score @s ec.quest_id_2 matches 23 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Endermite Exterminator",color:"white"},{text:" — Kill 5 Endermites",color:"gray"}]
execute if score @s ec.quest_id_2 matches 24 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Vindicator Bounty",color:"white"},{text:" — Kill 5 Vindicators",color:"gray"}]
execute if score @s ec.quest_id_2 matches 25 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Compass Crafter",color:"white"},{text:" — Craft 4 Compasses",color:"gray"}]
execute if score @s ec.quest_id_2 matches 26 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Spyglass Supply",color:"white"},{text:" — Craft 2 Spyglasses",color:"gray"}]
execute if score @s ec.quest_id_2 matches 27 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Dried Kelp Blocks",color:"white"},{text:" — Craft 16 Dried Kelp Blocks",color:"gray"}]
execute if score @s ec.quest_id_2 matches 28 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Candle Bulk",color:"white"},{text:" — Craft 32 Candles",color:"gray"}]
execute if score @s ec.quest_id_2 matches 29 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Piglin Skirmish",color:"white"},{text:" — Kill 10 Piglins",color:"gray"}]
execute if score @s ec.quest_id_2 matches 30 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Magma Cube Burst",color:"white"},{text:" — Kill 10 Magma Cubes",color:"gray"}]
execute if score @s ec.quest_id_2 matches 31 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Wayfarer's Ration",color:"white"},{text:" — Cook 3 Wayfarer Meals",color:"gray"}]
execute if score @s ec.quest_id_2 matches 32 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Copper Excavation",color:"white"},{text:" — Prospect 12 Nodes",color:"gray"}]
execute if score @s ec.quest_id_2 matches 33 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Glow Berry Harvest",color:"white"},{text:" — Gather 24 Glow Berries",color:"gray"}]
execute if score @s ec.quest_id_2 matches 34 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Pointed Dripstone",color:"white"},{text:" — Gather 16 Pointed Dripstone",color:"gray"}]
execute if score @s ec.quest_id_2 matches 35 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Azalea Gathering",color:"white"},{text:" — Gather 8 Flowering Azalea",color:"gray"}]
execute if score @s ec.quest_id_2 matches 36 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Sculk Sensor Haul",color:"white"},{text:" — Gather 4 Sculk Sensors",color:"gray"}]
execute if score @s ec.quest_id_2 matches 37 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Silverfish Sweep",color:"white"},{text:" — Kill 10 Silverfish",color:"gray"}]
execute if score @s ec.quest_id_2 matches 38 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Hoglin Hunter",color:"white"},{text:" — Kill 8 Hoglins",color:"gray"}]
execute if score @s ec.quest_id_2 matches 39 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Sweet Berries",color:"white"},{text:" — Gather 32 Sweet Berries",color:"gray"}]
execute if score @s ec.quest_id_2 matches 40 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Brush Finder",color:"white"},{text:" — Forage 15 Bushes",color:"gray"}]
execute if score @s ec.quest_id_2 matches 41 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Lore Trail",color:"white"},{text:" — Find 5 Lore Fragments",color:"gray"}]
execute if score @s ec.quest_id_2 matches 42 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Nether Brick Supply",color:"white"},{text:" — Gather 32 Nether Bricks",color:"gray"}]
execute if score @s ec.quest_id_2 matches 43 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Blaze Powder",color:"white"},{text:" — Gather 16 Blaze Powder",color:"gray"}]
execute if score @s ec.quest_id_2 matches 44 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Chorus Fruit Picker",color:"white"},{text:" — Gather 16 Chorus Fruit",color:"gray"}]
execute if score @s ec.quest_id_2 matches 45 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Map Maker",color:"white"},{text:" — Craft 4 Maps",color:"gray"}]
execute if score @s ec.quest_id_2 matches 46 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Brewing Supplies",color:"white"},{text:" — Gather 24 Nether Wart",color:"gray"}]
execute if score @s ec.quest_id_2 matches 47 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Crystal Geode",color:"white"},{text:" — Gather 8 Amethyst Clusters",color:"gray"}]
execute if score @s ec.quest_id_2 matches 48 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Shroom Harvest",color:"white"},{text:" — Forage 12 Bushes",color:"gray"}]
execute if score @s ec.quest_id_2 matches 49 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Ghast Tear Run",color:"white"},{text:" — Kill 3 Ghasts",color:"gray"}]
execute if score @s ec.quest_id_2 matches 50 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Revealed: ",color:"yellow"},{text:"Fortune Cookie",color:"white"},{text:" — Cook 2 Fortune Meals",color:"gray"}]

# === Quest Type Tip ===
# Default: gather (1)
scoreboard players set #qtype ec.var 1
execute if score @s ec.quest_id_2 matches 2 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_2 matches 5 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_2 matches 6 run scoreboard players set #qtype ec.var 5
execute if score @s ec.quest_id_2 matches 11 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_2 matches 12 run scoreboard players set #qtype ec.var 5
execute if score @s ec.quest_id_2 matches 15 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_2 matches 16 run scoreboard players set #qtype ec.var 3
execute if score @s ec.quest_id_2 matches 17 run scoreboard players set #qtype ec.var 4
execute if score @s ec.quest_id_2 matches 18..19 run scoreboard players set #qtype ec.var 6
execute if score @s ec.quest_id_2 matches 20 run scoreboard players set #qtype ec.var 7
execute if score @s ec.quest_id_2 matches 23..24 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_2 matches 25..28 run scoreboard players set #qtype ec.var 5
execute if score @s ec.quest_id_2 matches 29..30 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_2 matches 31 run scoreboard players set #qtype ec.var 6
execute if score @s ec.quest_id_2 matches 32 run scoreboard players set #qtype ec.var 4
execute if score @s ec.quest_id_2 matches 37..38 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_2 matches 40 run scoreboard players set #qtype ec.var 3
execute if score @s ec.quest_id_2 matches 41 run scoreboard players set #qtype ec.var 7
execute if score @s ec.quest_id_2 matches 45 run scoreboard players set #qtype ec.var 5
execute if score @s ec.quest_id_2 matches 48 run scoreboard players set #qtype ec.var 3
execute if score @s ec.quest_id_2 matches 49 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_2 matches 50 run scoreboard players set #qtype ec.var 6
function evercraft:quests/tips/show
