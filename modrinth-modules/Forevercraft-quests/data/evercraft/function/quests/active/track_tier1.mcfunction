# ============================================================
# Track Tier 1 (Errand) Quest Progress
# Example: E01 = Wheat Harvest (gather 32 wheat)
# Example: E04 = Pest Control (kill 8 zombies)
# ============================================================

# E01 - Wheat Harvest (gather type)
execute if score @s ec.quest_id_1 matches 1 store result score @s ec.quest_prog_1 run clear @s minecraft:wheat 0
execute if score @s ec.quest_id_1 matches 1 if score @s ec.quest_prog_1 matches 32.. run function evercraft:quests/active/complete_tier1

# E02 - Stone Supply
execute if score @s ec.quest_id_1 matches 2 store result score @s ec.quest_prog_1 run clear @s minecraft:cobblestone 0
execute if score @s ec.quest_id_1 matches 2 if score @s ec.quest_prog_1 matches 64.. run function evercraft:quests/active/complete_tier1

# E03 - Wood Run (any log)
execute if score @s ec.quest_id_1 matches 3 store result score @s ec.quest_prog_1 run clear @s #minecraft:logs 0
execute if score @s ec.quest_id_1 matches 3 if score @s ec.quest_prog_1 matches 48.. run function evercraft:quests/active/complete_tier1

# E04 - Pest Control (kill type)
execute if score @s ec.quest_id_1 matches 4 run scoreboard players operation @s ec.quest_prog_1 = @s ec.kills_zombie
execute if score @s ec.quest_id_1 matches 4 if score @s ec.quest_prog_1 matches 8.. run function evercraft:quests/active/complete_tier1

# E05 - Spider Sweep
execute if score @s ec.quest_id_1 matches 5 run scoreboard players operation @s ec.quest_prog_1 = @s ec.kills_spider
execute if score @s ec.quest_id_1 matches 5 if score @s ec.quest_prog_1 matches 6.. run function evercraft:quests/active/complete_tier1

# E06 - Flower Picking
execute if score @s ec.quest_id_1 matches 6 store result score @s ec.quest_prog_1 run clear @s #minecraft:flowers 0
execute if score @s ec.quest_id_1 matches 6 if score @s ec.quest_prog_1 matches 16.. run function evercraft:quests/active/complete_tier1

# E07 - Coal Delivery
execute if score @s ec.quest_id_1 matches 7 store result score @s ec.quest_prog_1 run clear @s minecraft:coal 0
execute if score @s ec.quest_id_1 matches 7 if score @s ec.quest_prog_1 matches 32.. run function evercraft:quests/active/complete_tier1

# E08 - Bread Baker
execute if score @s ec.quest_id_1 matches 8 store result score @s ec.quest_prog_1 run clear @s minecraft:bread 0
execute if score @s ec.quest_id_1 matches 8 if score @s ec.quest_prog_1 matches 16.. run function evercraft:quests/active/complete_tier1

# E09 - Torch Maker
execute if score @s ec.quest_id_1 matches 9 store result score @s ec.quest_prog_1 run clear @s minecraft:torch 0
execute if score @s ec.quest_id_1 matches 9 if score @s ec.quest_prog_1 matches 32.. run function evercraft:quests/active/complete_tier1

# E10 - Wool Collection
execute if score @s ec.quest_id_1 matches 10 store result score @s ec.quest_prog_1 run clear @s #minecraft:wool 0
execute if score @s ec.quest_id_1 matches 10 if score @s ec.quest_prog_1 matches 16.. run function evercraft:quests/active/complete_tier1

# E11 - Fish Supper
execute if score @s ec.quest_id_1 matches 11 store result score @s ec.quest_prog_1 run clear @s #minecraft:fishes 0
execute if score @s ec.quest_id_1 matches 11 if score @s ec.quest_prog_1 matches 8.. run function evercraft:quests/active/complete_tier1

# E12 - Bone Collector
execute if score @s ec.quest_id_1 matches 12 store result score @s ec.quest_prog_1 run clear @s minecraft:bone 0
execute if score @s ec.quest_id_1 matches 12 if score @s ec.quest_prog_1 matches 16.. run function evercraft:quests/active/complete_tier1

# E13 - Sugar Rush
execute if score @s ec.quest_id_1 matches 13 store result score @s ec.quest_prog_1 run clear @s minecraft:sugar_cane 0
execute if score @s ec.quest_id_1 matches 13 if score @s ec.quest_prog_1 matches 24.. run function evercraft:quests/active/complete_tier1

# E14 - Arrow Fletcher
execute if score @s ec.quest_id_1 matches 14 store result score @s ec.quest_prog_1 run clear @s minecraft:arrow 0
execute if score @s ec.quest_id_1 matches 14 if score @s ec.quest_prog_1 matches 64.. run function evercraft:quests/active/complete_tier1

# E15 - Mushroom Stew
execute if score @s ec.quest_id_1 matches 15 store result score @s ec.quest_prog_1 run clear @s minecraft:mushroom_stew 0
execute if score @s ec.quest_id_1 matches 15 if score @s ec.quest_prog_1 matches 8.. run function evercraft:quests/active/complete_tier1

# E16 - Berry Picker (forage)
execute if score @s ec.quest_id_1 matches 16 run scoreboard players operation @s ec.quest_prog_1 = @s ach.forages_done
execute if score @s ec.quest_id_1 matches 16 run scoreboard players operation @s ec.quest_prog_1 -= @s ec.stat_snap_1
execute if score @s ec.quest_id_1 matches 16 if score @s ec.quest_prog_1 matches 3.. run function evercraft:quests/active/complete_tier1

# E17 - Copper Vein (prospect)
execute if score @s ec.quest_id_1 matches 17 run scoreboard players operation @s ec.quest_prog_1 = @s ach.prospects_done
execute if score @s ec.quest_id_1 matches 17 run scoreboard players operation @s ec.quest_prog_1 -= @s ec.stat_snap_1
execute if score @s ec.quest_id_1 matches 17 if score @s ec.quest_prog_1 matches 2.. run function evercraft:quests/active/complete_tier1

# E18 - First Course (cook)
execute if score @s ec.quest_id_1 matches 18 run scoreboard players operation @s ec.quest_prog_1 = @s ach.meals_cooked
execute if score @s ec.quest_id_1 matches 18 run scoreboard players operation @s ec.quest_prog_1 -= @s ec.stat_snap_1
execute if score @s ec.quest_id_1 matches 18 if score @s ec.quest_prog_1 matches 2.. run function evercraft:quests/active/complete_tier1

# E19 - Rotten Cleanup (hunt)
execute if score @s ec.quest_id_1 matches 19 run scoreboard players operation @s ec.quest_prog_1 = @s ec.kills_zombie
execute if score @s ec.quest_id_1 matches 19 if score @s ec.quest_prog_1 matches 12.. run function evercraft:quests/active/complete_tier1

# E20 - Clay Digger (gather)
execute if score @s ec.quest_id_1 matches 20 store result score @s ec.quest_prog_1 run clear @s minecraft:clay_ball 0
execute if score @s ec.quest_id_1 matches 20 if score @s ec.quest_prog_1 matches 32.. run function evercraft:quests/active/complete_tier1

# E21 - Egg Collector (gather)
execute if score @s ec.quest_id_1 matches 21 store result score @s ec.quest_prog_1 run clear @s minecraft:egg 0
execute if score @s ec.quest_id_1 matches 21 if score @s ec.quest_prog_1 matches 16.. run function evercraft:quests/active/complete_tier1

# E22 - String Theory (gather)
execute if score @s ec.quest_id_1 matches 22 store result score @s ec.quest_prog_1 run clear @s minecraft:string 0
execute if score @s ec.quest_id_1 matches 22 if score @s ec.quest_prog_1 matches 24.. run function evercraft:quests/active/complete_tier1

# E23 - Leather Worker (gather)
execute if score @s ec.quest_id_1 matches 23 store result score @s ec.quest_prog_1 run clear @s minecraft:leather 0
execute if score @s ec.quest_id_1 matches 23 if score @s ec.quest_prog_1 matches 16.. run function evercraft:quests/active/complete_tier1

# E24 - Potato Farmer (gather)
execute if score @s ec.quest_id_1 matches 24 store result score @s ec.quest_prog_1 run clear @s minecraft:potato 0
execute if score @s ec.quest_id_1 matches 24 if score @s ec.quest_prog_1 matches 32.. run function evercraft:quests/active/complete_tier1

# E25 - Carrot Crop (gather)
execute if score @s ec.quest_id_1 matches 25 store result score @s ec.quest_prog_1 run clear @s minecraft:carrot 0
execute if score @s ec.quest_id_1 matches 25 if score @s ec.quest_prog_1 matches 32.. run function evercraft:quests/active/complete_tier1

# OPT: Early exit for IDs 1-25 (skip remaining ~25 quest checks)
execute if score @s ec.quest_id_1 matches 1..25 run return 0

# E26 - Beetroot Haul (gather)
execute if score @s ec.quest_id_1 matches 26 store result score @s ec.quest_prog_1 run clear @s minecraft:beetroot 0
execute if score @s ec.quest_id_1 matches 26 if score @s ec.quest_prog_1 matches 24.. run function evercraft:quests/active/complete_tier1

# E27 - Paper Route (craft)
execute if score @s ec.quest_id_1 matches 27 store result score @s ec.quest_prog_1 run clear @s minecraft:paper 0
execute if score @s ec.quest_id_1 matches 27 if score @s ec.quest_prog_1 matches 24.. run function evercraft:quests/active/complete_tier1

# E28 - Fence Builder (craft)
execute if score @s ec.quest_id_1 matches 28 store result score @s ec.quest_prog_1 run clear @s #minecraft:fences 0
execute if score @s ec.quest_id_1 matches 28 if score @s ec.quest_prog_1 matches 32.. run function evercraft:quests/active/complete_tier1

# E29 - Glass Blower (craft)
execute if score @s ec.quest_id_1 matches 29 store result score @s ec.quest_prog_1 run clear @s minecraft:glass 0
execute if score @s ec.quest_id_1 matches 29 if score @s ec.quest_prog_1 matches 32.. run function evercraft:quests/active/complete_tier1

# E30 - Gravel Sifter (gather)
execute if score @s ec.quest_id_1 matches 30 store result score @s ec.quest_prog_1 run clear @s minecraft:flint 0
execute if score @s ec.quest_id_1 matches 30 if score @s ec.quest_prog_1 matches 16.. run function evercraft:quests/active/complete_tier1

# E31 - Iron Bucket (craft)
execute if score @s ec.quest_id_1 matches 31 store result score @s ec.quest_prog_1 run clear @s minecraft:bucket 0
execute if score @s ec.quest_id_1 matches 31 if score @s ec.quest_prog_1 matches 4.. run function evercraft:quests/active/complete_tier1

# E32 - Dye Maker (gather)
execute if score @s ec.quest_id_1 matches 32 store result score @s ec.quest_prog_1 run clear @s #evercraft:dyes 0
execute if score @s ec.quest_id_1 matches 32 if score @s ec.quest_prog_1 matches 16.. run function evercraft:quests/active/complete_tier1

# E33 - Seagrass Sweep (gather)
execute if score @s ec.quest_id_1 matches 33 store result score @s ec.quest_prog_1 run clear @s minecraft:seagrass 0
execute if score @s ec.quest_id_1 matches 33 if score @s ec.quest_prog_1 matches 24.. run function evercraft:quests/active/complete_tier1

# E34 - Kelp Harvest (gather)
execute if score @s ec.quest_id_1 matches 34 store result score @s ec.quest_prog_1 run clear @s minecraft:dried_kelp 0
execute if score @s ec.quest_id_1 matches 34 if score @s ec.quest_prog_1 matches 32.. run function evercraft:quests/active/complete_tier1

# E35 - Lore Seeker (lore)
execute if score @s ec.quest_id_1 matches 35 run scoreboard players operation @s ec.quest_prog_1 = @s ach.lore_found
execute if score @s ec.quest_id_1 matches 35 run scoreboard players operation @s ec.quest_prog_1 -= @s ec.stat_snap_1
execute if score @s ec.quest_id_1 matches 35 if score @s ec.quest_prog_1 matches 1.. run function evercraft:quests/active/complete_tier1

# E36 - Campfire Cook (cook)
execute if score @s ec.quest_id_1 matches 36 run scoreboard players operation @s ec.quest_prog_1 = @s ach.meals_cooked
execute if score @s ec.quest_id_1 matches 36 run scoreboard players operation @s ec.quest_prog_1 -= @s ec.stat_snap_1
execute if score @s ec.quest_id_1 matches 36 if score @s ec.quest_prog_1 matches 3.. run function evercraft:quests/active/complete_tier1

# E37 - Seedling Run (gather)
execute if score @s ec.quest_id_1 matches 37 store result score @s ec.quest_prog_1 run clear @s #minecraft:saplings 0
execute if score @s ec.quest_id_1 matches 37 if score @s ec.quest_prog_1 matches 16.. run function evercraft:quests/active/complete_tier1

# OPT: Early exit for IDs 26-37 (skip remaining ~13 quest checks)
execute if score @s ec.quest_id_1 matches 26..37 run return 0

# E38 - Bush Whacker (forage)
execute if score @s ec.quest_id_1 matches 38 run scoreboard players operation @s ec.quest_prog_1 = @s ach.forages_done
execute if score @s ec.quest_id_1 matches 38 run scoreboard players operation @s ec.quest_prog_1 -= @s ec.stat_snap_1
execute if score @s ec.quest_id_1 matches 38 if score @s ec.quest_prog_1 matches 5.. run function evercraft:quests/active/complete_tier1

# E39 - Glow Ink (gather)
execute if score @s ec.quest_id_1 matches 39 store result score @s ec.quest_prog_1 run clear @s minecraft:glow_ink_sac 0
execute if score @s ec.quest_id_1 matches 39 if score @s ec.quest_prog_1 matches 8.. run function evercraft:quests/active/complete_tier1

# E40 - Candle Maker (craft)
execute if score @s ec.quest_id_1 matches 40 store result score @s ec.quest_prog_1 run clear @s #minecraft:candles 0
execute if score @s ec.quest_id_1 matches 40 if score @s ec.quest_prog_1 matches 16.. run function evercraft:quests/active/complete_tier1

# E41 - Stew Pot (cook)
execute if score @s ec.quest_id_1 matches 41 run scoreboard players operation @s ec.quest_prog_1 = @s ach.meals_cooked
execute if score @s ec.quest_id_1 matches 41 run scoreboard players operation @s ec.quest_prog_1 -= @s ec.stat_snap_1
execute if score @s ec.quest_id_1 matches 41 if score @s ec.quest_prog_1 matches 4.. run function evercraft:quests/active/complete_tier1

# E42 - Sand Hauler (gather)
execute if score @s ec.quest_id_1 matches 42 store result score @s ec.quest_prog_1 run clear @s minecraft:sand 0
execute if score @s ec.quest_id_1 matches 42 if score @s ec.quest_prog_1 matches 64.. run function evercraft:quests/active/complete_tier1

# E43 - Rail Layer (craft)
execute if score @s ec.quest_id_1 matches 43 store result score @s ec.quest_prog_1 run clear @s minecraft:rail 0
execute if score @s ec.quest_id_1 matches 43 if score @s ec.quest_prog_1 matches 32.. run function evercraft:quests/active/complete_tier1

# E44 - Terracotta Run (gather)
execute if score @s ec.quest_id_1 matches 44 store result score @s ec.quest_prog_1 run clear @s minecraft:terracotta 0
execute if score @s ec.quest_id_1 matches 44 if score @s ec.quest_prog_1 matches 32.. run function evercraft:quests/active/complete_tier1

# E45 - Vine Collector (gather)
execute if score @s ec.quest_id_1 matches 45 store result score @s ec.quest_prog_1 run clear @s minecraft:vine 0
execute if score @s ec.quest_id_1 matches 45 if score @s ec.quest_prog_1 matches 24.. run function evercraft:quests/active/complete_tier1

# E46 - Ink Sac Run (gather)
execute if score @s ec.quest_id_1 matches 46 store result score @s ec.quest_prog_1 run clear @s minecraft:ink_sac 0
execute if score @s ec.quest_id_1 matches 46 if score @s ec.quest_prog_1 matches 16.. run function evercraft:quests/active/complete_tier1

# E47 - Moss Gatherer (gather)
execute if score @s ec.quest_id_1 matches 47 store result score @s ec.quest_prog_1 run clear @s minecraft:moss_block 0
execute if score @s ec.quest_id_1 matches 47 if score @s ec.quest_prog_1 matches 16.. run function evercraft:quests/active/complete_tier1

# E48 - Husk Patrol (hunt)
execute if score @s ec.quest_id_1 matches 48 run scoreboard players operation @s ec.quest_prog_1 = @s ec.kills_husk
execute if score @s ec.quest_id_1 matches 48 if score @s ec.quest_prog_1 matches 8.. run function evercraft:quests/active/complete_tier1

# E49 - Stray Hunter (hunt)
execute if score @s ec.quest_id_1 matches 49 run scoreboard players operation @s ec.quest_prog_1 = @s ec.kills_stray
execute if score @s ec.quest_id_1 matches 49 if score @s ec.quest_prog_1 matches 8.. run function evercraft:quests/active/complete_tier1

# E50 - Ore Scout (prospect)
execute if score @s ec.quest_id_1 matches 50 run scoreboard players operation @s ec.quest_prog_1 = @s ach.prospects_done
execute if score @s ec.quest_id_1 matches 50 run scoreboard players operation @s ec.quest_prog_1 -= @s ec.stat_snap_1
execute if score @s ec.quest_id_1 matches 50 if score @s ec.quest_prog_1 matches 3.. run function evercraft:quests/active/complete_tier1
