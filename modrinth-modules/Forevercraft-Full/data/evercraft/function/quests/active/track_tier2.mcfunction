# ============================================================
# Track Tier 2 (Task) Quest Progress
# ============================================================

# T01 - Iron Prospector
execute if score @s ec.quest_id_2 matches 1 store result score @s ec.quest_prog_2 run clear @s minecraft:raw_iron 0
execute if score @s ec.quest_id_2 matches 1 if score @s ec.quest_prog_2 matches 32.. run function evercraft:quests/active/complete_tier2

# T02 - Skeleton Slayer
execute if score @s ec.quest_id_2 matches 2 run scoreboard players operation @s ec.quest_prog_2 = @s ec.kills_skeleton
execute if score @s ec.quest_id_2 matches 2 if score @s ec.quest_prog_2 matches 15.. run function evercraft:quests/active/complete_tier2

# T03 - Cactus Trader
execute if score @s ec.quest_id_2 matches 3 store result score @s ec.quest_prog_2 run clear @s minecraft:cactus 0
execute if score @s ec.quest_id_2 matches 3 if score @s ec.quest_prog_2 matches 32.. run function evercraft:quests/active/complete_tier2

# T04 - Bamboo Harvest
execute if score @s ec.quest_id_2 matches 4 store result score @s ec.quest_prog_2 run clear @s minecraft:bamboo 0
execute if score @s ec.quest_id_2 matches 4 if score @s ec.quest_prog_2 matches 64.. run function evercraft:quests/active/complete_tier2

# T05 - Creeper Hunter
execute if score @s ec.quest_id_2 matches 5 run scoreboard players operation @s ec.quest_prog_2 = @s ec.kills_creeper
execute if score @s ec.quest_id_2 matches 5 if score @s ec.quest_prog_2 matches 10.. run function evercraft:quests/active/complete_tier2

# T06 - Bookshelf Builder
execute if score @s ec.quest_id_2 matches 6 store result score @s ec.quest_prog_2 run clear @s minecraft:bookshelf 0
execute if score @s ec.quest_id_2 matches 6 if score @s ec.quest_prog_2 matches 8.. run function evercraft:quests/active/complete_tier2

# T07 - Ice Collector
execute if score @s ec.quest_id_2 matches 7 store result score @s ec.quest_prog_2 run clear @s minecraft:packed_ice 0
execute if score @s ec.quest_id_2 matches 7 if score @s ec.quest_prog_2 matches 32.. run function evercraft:quests/active/complete_tier2

# T08 - Honey Gatherer
execute if score @s ec.quest_id_2 matches 8 store result score @s ec.quest_prog_2 run clear @s minecraft:honey_bottle 0
execute if score @s ec.quest_id_2 matches 8 if score @s ec.quest_prog_2 matches 8.. run function evercraft:quests/active/complete_tier2

# T09 - Pumpkin Farmer
execute if score @s ec.quest_id_2 matches 9 store result score @s ec.quest_prog_2 run clear @s minecraft:pumpkin 0
execute if score @s ec.quest_id_2 matches 9 if score @s ec.quest_prog_2 matches 24.. run function evercraft:quests/active/complete_tier2

# T10 - Redstone Miner
execute if score @s ec.quest_id_2 matches 10 store result score @s ec.quest_prog_2 run clear @s minecraft:redstone 0
execute if score @s ec.quest_id_2 matches 10 if score @s ec.quest_prog_2 matches 32.. run function evercraft:quests/active/complete_tier2

# T11 - Drowned Hunter
execute if score @s ec.quest_id_2 matches 11 run scoreboard players operation @s ec.quest_prog_2 = @s ec.kills_drowned
execute if score @s ec.quest_id_2 matches 11 if score @s ec.quest_prog_2 matches 12.. run function evercraft:quests/active/complete_tier2

# T12 - Lantern Crafter
execute if score @s ec.quest_id_2 matches 12 store result score @s ec.quest_prog_2 run clear @s minecraft:lantern 0
execute if score @s ec.quest_id_2 matches 12 if score @s ec.quest_prog_2 matches 16.. run function evercraft:quests/active/complete_tier2

# T13 - Copper Collector
execute if score @s ec.quest_id_2 matches 13 store result score @s ec.quest_prog_2 run clear @s minecraft:raw_copper 0
execute if score @s ec.quest_id_2 matches 13 if score @s ec.quest_prog_2 matches 48.. run function evercraft:quests/active/complete_tier2

# T14 - Melon Farm
execute if score @s ec.quest_id_2 matches 14 store result score @s ec.quest_prog_2 run clear @s minecraft:melon_slice 0
execute if score @s ec.quest_id_2 matches 14 if score @s ec.quest_prog_2 matches 32.. run function evercraft:quests/active/complete_tier2

# T15 - Phantasm Defense
execute if score @s ec.quest_id_2 matches 15 run scoreboard players operation @s ec.quest_prog_2 = @s ec.kills_phantom
execute if score @s ec.quest_id_2 matches 15 if score @s ec.quest_prog_2 matches 5.. run function evercraft:quests/active/complete_tier2

# T16 - Wilderness Forager (forage 10)
execute if score @s ec.quest_id_2 matches 16 run scoreboard players operation @s ec.quest_prog_2 = @s ach.forages_done
execute if score @s ec.quest_id_2 matches 16 run scoreboard players operation @s ec.quest_prog_2 -= @s ec.stat_snap_2
execute if score @s ec.quest_id_2 matches 16 if score @s ec.quest_prog_2 matches 10.. run function evercraft:quests/active/complete_tier2

# T17 - Vein Tapper (prospect 8)
execute if score @s ec.quest_id_2 matches 17 run scoreboard players operation @s ec.quest_prog_2 = @s ach.prospects_done
execute if score @s ec.quest_id_2 matches 17 run scoreboard players operation @s ec.quest_prog_2 -= @s ec.stat_snap_2
execute if score @s ec.quest_id_2 matches 17 if score @s ec.quest_prog_2 matches 8.. run function evercraft:quests/active/complete_tier2

# T18 - Battle Stew (cook 3)
execute if score @s ec.quest_id_2 matches 18 run scoreboard players operation @s ec.quest_prog_2 = @s ach.meals_cooked
execute if score @s ec.quest_id_2 matches 18 run scoreboard players operation @s ec.quest_prog_2 -= @s ec.stat_snap_2
execute if score @s ec.quest_id_2 matches 18 if score @s ec.quest_prog_2 matches 3.. run function evercraft:quests/active/complete_tier2

# T19 - Miner's Lunch (cook 3)
execute if score @s ec.quest_id_2 matches 19 run scoreboard players operation @s ec.quest_prog_2 = @s ach.meals_cooked
execute if score @s ec.quest_id_2 matches 19 run scoreboard players operation @s ec.quest_prog_2 -= @s ec.stat_snap_2
execute if score @s ec.quest_id_2 matches 19 if score @s ec.quest_prog_2 matches 3.. run function evercraft:quests/active/complete_tier2

# T20 - Fragment Hunter (lore 3)
execute if score @s ec.quest_id_2 matches 20 run scoreboard players operation @s ec.quest_prog_2 = @s ach.lore_found
execute if score @s ec.quest_id_2 matches 20 run scoreboard players operation @s ec.quest_prog_2 -= @s ec.stat_snap_2
execute if score @s ec.quest_id_2 matches 20 if score @s ec.quest_prog_2 matches 3.. run function evercraft:quests/active/complete_tier2

# T21 - Lapis Miner (gather 32)
execute if score @s ec.quest_id_2 matches 21 store result score @s ec.quest_prog_2 run clear @s minecraft:lapis_lazuli 0
execute if score @s ec.quest_id_2 matches 21 if score @s ec.quest_prog_2 matches 32.. run function evercraft:quests/active/complete_tier2

# T22 - Gold Panner (gather 16)
execute if score @s ec.quest_id_2 matches 22 store result score @s ec.quest_prog_2 run clear @s minecraft:raw_gold 0
execute if score @s ec.quest_id_2 matches 22 if score @s ec.quest_prog_2 matches 16.. run function evercraft:quests/active/complete_tier2

# T23 - Endermite Exterminator (hunt 5)
execute if score @s ec.quest_id_2 matches 23 run scoreboard players operation @s ec.quest_prog_2 = @s ec.kills_endermite
execute if score @s ec.quest_id_2 matches 23 if score @s ec.quest_prog_2 matches 5.. run function evercraft:quests/active/complete_tier2

# T24 - Vindicator Bounty (hunt 5)
execute if score @s ec.quest_id_2 matches 24 run scoreboard players operation @s ec.quest_prog_2 = @s ec.kills_vindicator
execute if score @s ec.quest_id_2 matches 24 if score @s ec.quest_prog_2 matches 5.. run function evercraft:quests/active/complete_tier2

# T25 - Compass Crafter (craft 4)
execute if score @s ec.quest_id_2 matches 25 store result score @s ec.quest_prog_2 run clear @s minecraft:compass 0
execute if score @s ec.quest_id_2 matches 25 if score @s ec.quest_prog_2 matches 4.. run function evercraft:quests/active/complete_tier2

# OPT: Early exit for IDs 1-25 (skip remaining ~25 quest checks)
execute if score @s ec.quest_id_2 matches 1..25 run return 0

# T26 - Spyglass Supply (craft 2)
execute if score @s ec.quest_id_2 matches 26 store result score @s ec.quest_prog_2 run clear @s minecraft:spyglass 0
execute if score @s ec.quest_id_2 matches 26 if score @s ec.quest_prog_2 matches 2.. run function evercraft:quests/active/complete_tier2

# T27 - Dried Kelp Blocks (craft 16)
execute if score @s ec.quest_id_2 matches 27 store result score @s ec.quest_prog_2 run clear @s minecraft:dried_kelp_block 0
execute if score @s ec.quest_id_2 matches 27 if score @s ec.quest_prog_2 matches 16.. run function evercraft:quests/active/complete_tier2

# T28 - Candle Bulk (craft 32)
execute if score @s ec.quest_id_2 matches 28 store result score @s ec.quest_prog_2 run clear @s #minecraft:candles 0
execute if score @s ec.quest_id_2 matches 28 if score @s ec.quest_prog_2 matches 32.. run function evercraft:quests/active/complete_tier2

# T29 - Piglin Skirmish (hunt 10, NETHER)
execute if score @s ec.quest_id_2 matches 29 run scoreboard players operation @s ec.quest_prog_2 = @s ec.kills_piglin
execute if score @s ec.quest_id_2 matches 29 if score @s ec.quest_prog_2 matches 10.. run function evercraft:quests/active/complete_tier2

# T30 - Magma Cube Burst (hunt 10, NETHER)
execute if score @s ec.quest_id_2 matches 30 run scoreboard players operation @s ec.quest_prog_2 = @s ec.kills_magma_cube
execute if score @s ec.quest_id_2 matches 30 if score @s ec.quest_prog_2 matches 10.. run function evercraft:quests/active/complete_tier2

# T31 - Wayfarer's Ration (cook 3)
execute if score @s ec.quest_id_2 matches 31 run scoreboard players operation @s ec.quest_prog_2 = @s ach.meals_cooked
execute if score @s ec.quest_id_2 matches 31 run scoreboard players operation @s ec.quest_prog_2 -= @s ec.stat_snap_2
execute if score @s ec.quest_id_2 matches 31 if score @s ec.quest_prog_2 matches 3.. run function evercraft:quests/active/complete_tier2

# T32 - Copper Excavation (prospect 12)
execute if score @s ec.quest_id_2 matches 32 run scoreboard players operation @s ec.quest_prog_2 = @s ach.prospects_done
execute if score @s ec.quest_id_2 matches 32 run scoreboard players operation @s ec.quest_prog_2 -= @s ec.stat_snap_2
execute if score @s ec.quest_id_2 matches 32 if score @s ec.quest_prog_2 matches 12.. run function evercraft:quests/active/complete_tier2

# T33 - Glow Berry Harvest (gather 24)
execute if score @s ec.quest_id_2 matches 33 store result score @s ec.quest_prog_2 run clear @s minecraft:glow_berries 0
execute if score @s ec.quest_id_2 matches 33 if score @s ec.quest_prog_2 matches 24.. run function evercraft:quests/active/complete_tier2

# T34 - Pointed Dripstone (gather 16)
execute if score @s ec.quest_id_2 matches 34 store result score @s ec.quest_prog_2 run clear @s minecraft:pointed_dripstone 0
execute if score @s ec.quest_id_2 matches 34 if score @s ec.quest_prog_2 matches 16.. run function evercraft:quests/active/complete_tier2

# T35 - Azalea Gathering (gather 8)
execute if score @s ec.quest_id_2 matches 35 store result score @s ec.quest_prog_2 run clear @s minecraft:flowering_azalea 0
execute if score @s ec.quest_id_2 matches 35 if score @s ec.quest_prog_2 matches 8.. run function evercraft:quests/active/complete_tier2

# T36 - Sculk Sensor Haul (gather 4)
execute if score @s ec.quest_id_2 matches 36 store result score @s ec.quest_prog_2 run clear @s minecraft:sculk_sensor 0
execute if score @s ec.quest_id_2 matches 36 if score @s ec.quest_prog_2 matches 4.. run function evercraft:quests/active/complete_tier2

# T37 - Silverfish Sweep (hunt 10)
execute if score @s ec.quest_id_2 matches 37 run scoreboard players operation @s ec.quest_prog_2 = @s ec.kills_silverfish
execute if score @s ec.quest_id_2 matches 37 if score @s ec.quest_prog_2 matches 10.. run function evercraft:quests/active/complete_tier2

# OPT: Early exit for IDs 26-37
execute if score @s ec.quest_id_2 matches 26..37 run return 0

# T38 - Hoglin Hunter (hunt 8, NETHER)
execute if score @s ec.quest_id_2 matches 38 run scoreboard players operation @s ec.quest_prog_2 = @s ec.kills_hoglin
execute if score @s ec.quest_id_2 matches 38 if score @s ec.quest_prog_2 matches 8.. run function evercraft:quests/active/complete_tier2

# T39 - Sweet Berries (gather 32)
execute if score @s ec.quest_id_2 matches 39 store result score @s ec.quest_prog_2 run clear @s minecraft:sweet_berries 0
execute if score @s ec.quest_id_2 matches 39 if score @s ec.quest_prog_2 matches 32.. run function evercraft:quests/active/complete_tier2

# T40 - Brush Finder (forage 15)
execute if score @s ec.quest_id_2 matches 40 run scoreboard players operation @s ec.quest_prog_2 = @s ach.forages_done
execute if score @s ec.quest_id_2 matches 40 run scoreboard players operation @s ec.quest_prog_2 -= @s ec.stat_snap_2
execute if score @s ec.quest_id_2 matches 40 if score @s ec.quest_prog_2 matches 15.. run function evercraft:quests/active/complete_tier2

# T41 - Lore Trail (lore 5)
execute if score @s ec.quest_id_2 matches 41 run scoreboard players operation @s ec.quest_prog_2 = @s ach.lore_found
execute if score @s ec.quest_id_2 matches 41 run scoreboard players operation @s ec.quest_prog_2 -= @s ec.stat_snap_2
execute if score @s ec.quest_id_2 matches 41 if score @s ec.quest_prog_2 matches 5.. run function evercraft:quests/active/complete_tier2

# T42 - Nether Brick Supply (gather 32, NETHER)
execute if score @s ec.quest_id_2 matches 42 store result score @s ec.quest_prog_2 run clear @s minecraft:nether_bricks 0
execute if score @s ec.quest_id_2 matches 42 if score @s ec.quest_prog_2 matches 32.. run function evercraft:quests/active/complete_tier2

# T43 - Blaze Powder (gather 16, NETHER)
execute if score @s ec.quest_id_2 matches 43 store result score @s ec.quest_prog_2 run clear @s minecraft:blaze_powder 0
execute if score @s ec.quest_id_2 matches 43 if score @s ec.quest_prog_2 matches 16.. run function evercraft:quests/active/complete_tier2

# T44 - Chorus Fruit Picker (gather 16, END)
execute if score @s ec.quest_id_2 matches 44 store result score @s ec.quest_prog_2 run clear @s minecraft:chorus_fruit 0
execute if score @s ec.quest_id_2 matches 44 if score @s ec.quest_prog_2 matches 16.. run function evercraft:quests/active/complete_tier2

# T45 - Map Maker (craft 4)
execute if score @s ec.quest_id_2 matches 45 store result score @s ec.quest_prog_2 run clear @s minecraft:filled_map 0
execute if score @s ec.quest_id_2 matches 45 if score @s ec.quest_prog_2 matches 4.. run function evercraft:quests/active/complete_tier2

# T46 - Brewing Supplies (gather 24)
execute if score @s ec.quest_id_2 matches 46 store result score @s ec.quest_prog_2 run clear @s minecraft:nether_wart 0
execute if score @s ec.quest_id_2 matches 46 if score @s ec.quest_prog_2 matches 24.. run function evercraft:quests/active/complete_tier2

# T47 - Crystal Geode (gather 8)
execute if score @s ec.quest_id_2 matches 47 store result score @s ec.quest_prog_2 run clear @s minecraft:amethyst_shard 0
execute if score @s ec.quest_id_2 matches 47 if score @s ec.quest_prog_2 matches 8.. run function evercraft:quests/active/complete_tier2

# T48 - Shroom Harvest (forage 12)
execute if score @s ec.quest_id_2 matches 48 run scoreboard players operation @s ec.quest_prog_2 = @s ach.forages_done
execute if score @s ec.quest_id_2 matches 48 run scoreboard players operation @s ec.quest_prog_2 -= @s ec.stat_snap_2
execute if score @s ec.quest_id_2 matches 48 if score @s ec.quest_prog_2 matches 12.. run function evercraft:quests/active/complete_tier2

# T49 - Ghast Tear Run (hunt 3, NETHER)
execute if score @s ec.quest_id_2 matches 49 run scoreboard players operation @s ec.quest_prog_2 = @s ec.kills_ghast
execute if score @s ec.quest_id_2 matches 49 if score @s ec.quest_prog_2 matches 3.. run function evercraft:quests/active/complete_tier2

# T50 - Fortune Cookie (cook 2)
execute if score @s ec.quest_id_2 matches 50 run scoreboard players operation @s ec.quest_prog_2 = @s ach.meals_cooked
execute if score @s ec.quest_id_2 matches 50 run scoreboard players operation @s ec.quest_prog_2 -= @s ec.stat_snap_2
execute if score @s ec.quest_id_2 matches 50 if score @s ec.quest_prog_2 matches 2.. run function evercraft:quests/active/complete_tier2
