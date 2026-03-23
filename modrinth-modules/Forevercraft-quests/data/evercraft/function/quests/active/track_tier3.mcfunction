# ============================================================
# Track Tier 3 (Contract) Quest Progress
# ============================================================

# C01 - Gold Rush
execute if score @s ec.quest_id_3 matches 1 store result score @s ec.quest_prog_3 run clear @s minecraft:gold_ingot 0
execute if score @s ec.quest_id_3 matches 1 if score @s ec.quest_prog_3 matches 24.. run function evercraft:quests/active/complete_tier3

# C02 - Enderman Bounty
execute if score @s ec.quest_id_3 matches 2 run scoreboard players operation @s ec.quest_prog_3 = @s ec.kills_enderman
execute if score @s ec.quest_id_3 matches 2 if score @s ec.quest_prog_3 matches 8.. run function evercraft:quests/active/complete_tier3

# C03 - Diamond Seeker
execute if score @s ec.quest_id_3 matches 3 store result score @s ec.quest_prog_3 run clear @s minecraft:diamond 0
execute if score @s ec.quest_id_3 matches 3 if score @s ec.quest_prog_3 matches 8.. run function evercraft:quests/active/complete_tier3

# C04 - Cave Spider Nest
execute if score @s ec.quest_id_3 matches 4 run scoreboard players operation @s ec.quest_prog_3 = @s ec.kills_cave_spider
execute if score @s ec.quest_id_3 matches 4 if score @s ec.quest_prog_3 matches 15.. run function evercraft:quests/active/complete_tier3

# C05 - Obsidian Quarry
execute if score @s ec.quest_id_3 matches 5 store result score @s ec.quest_prog_3 run clear @s minecraft:obsidian 0
execute if score @s ec.quest_id_3 matches 5 if score @s ec.quest_prog_3 matches 16.. run function evercraft:quests/active/complete_tier3

# C06 - Witch Bounty
execute if score @s ec.quest_id_3 matches 6 run scoreboard players operation @s ec.quest_prog_3 = @s ec.kills_witch
execute if score @s ec.quest_id_3 matches 6 if score @s ec.quest_prog_3 matches 5.. run function evercraft:quests/active/complete_tier3

# C07 - Enchanted Gear
execute if score @s ec.quest_id_3 matches 7 store result score @s ec.quest_prog_3 run clear @s minecraft:enchanted_book 0
execute if score @s ec.quest_id_3 matches 7 if score @s ec.quest_prog_3 matches 4.. run function evercraft:quests/active/complete_tier3

# C08 - Prismarine Diver
execute if score @s ec.quest_id_3 matches 8 store result score @s ec.quest_prog_3 run clear @s minecraft:prismarine 0
execute if score @s ec.quest_id_3 matches 8 if score @s ec.quest_prog_3 matches 32.. run function evercraft:quests/active/complete_tier3

# C09 - Blaze Hunter
execute if score @s ec.quest_id_3 matches 9 run scoreboard players operation @s ec.quest_prog_3 = @s ec.kills_blaze
execute if score @s ec.quest_id_3 matches 9 if score @s ec.quest_prog_3 matches 8.. run function evercraft:quests/active/complete_tier3

# C10 - Ancient Debris
execute if score @s ec.quest_id_3 matches 10 store result score @s ec.quest_prog_3 run clear @s minecraft:ancient_debris 0
execute if score @s ec.quest_id_3 matches 10 if score @s ec.quest_prog_3 matches 4.. run function evercraft:quests/active/complete_tier3

# C11 - Guardian Slayer
execute if score @s ec.quest_id_3 matches 11 run scoreboard players operation @s ec.quest_prog_3 = @s ec.kills_guardian
execute if score @s ec.quest_id_3 matches 11 if score @s ec.quest_prog_3 matches 6.. run function evercraft:quests/active/complete_tier3

# C12 - Amethyst Miner
execute if score @s ec.quest_id_3 matches 12 store result score @s ec.quest_prog_3 run clear @s minecraft:amethyst_shard 0
execute if score @s ec.quest_id_3 matches 12 if score @s ec.quest_prog_3 matches 24.. run function evercraft:quests/active/complete_tier3

# C13 - Trail Explorer (explore - advancement trigger)

# C14 - Culinary Contract (cook)
execute if score @s ec.quest_id_3 matches 14 run scoreboard players operation @s ec.quest_prog_3 = @s ach.meals_cooked
execute if score @s ec.quest_id_3 matches 14 run scoreboard players operation @s ec.quest_prog_3 -= @s ec.stat_snap_3
execute if score @s ec.quest_id_3 matches 14 if score @s ec.quest_prog_3 matches 10.. run function evercraft:quests/active/complete_tier3

# C15 - Prospector's Haul (prospect)
execute if score @s ec.quest_id_3 matches 15 run scoreboard players operation @s ec.quest_prog_3 = @s ach.prospects_done
execute if score @s ec.quest_id_3 matches 15 run scoreboard players operation @s ec.quest_prog_3 -= @s ec.stat_snap_3
execute if score @s ec.quest_id_3 matches 15 if score @s ec.quest_prog_3 matches 20.. run function evercraft:quests/active/complete_tier3

# C16 - Forgotten Fragments (lore)
execute if score @s ec.quest_id_3 matches 16 run scoreboard players operation @s ec.quest_prog_3 = @s ach.lore_found
execute if score @s ec.quest_id_3 matches 16 run scoreboard players operation @s ec.quest_prog_3 -= @s ec.stat_snap_3
execute if score @s ec.quest_id_3 matches 16 if score @s ec.quest_prog_3 matches 8.. run function evercraft:quests/active/complete_tier3

# C17 - Forager's Bounty (forage)
execute if score @s ec.quest_id_3 matches 17 run scoreboard players operation @s ec.quest_prog_3 = @s ach.forages_done
execute if score @s ec.quest_id_3 matches 17 run scoreboard players operation @s ec.quest_prog_3 -= @s ec.stat_snap_3
execute if score @s ec.quest_id_3 matches 17 if score @s ec.quest_prog_3 matches 25.. run function evercraft:quests/active/complete_tier3

# C18 - Dungeon Delver (dungeon)
execute if score @s ec.quest_id_3 matches 18 run scoreboard players operation @s ec.quest_prog_3 = @s ach.dungeons_done
execute if score @s ec.quest_id_3 matches 18 run scoreboard players operation @s ec.quest_prog_3 -= @s ec.stat_snap_3
execute if score @s ec.quest_id_3 matches 18 if score @s ec.quest_prog_3 matches 1.. run function evercraft:quests/active/complete_tier3

# C19 - Battle Cook (cook)
execute if score @s ec.quest_id_3 matches 19 run scoreboard players operation @s ec.quest_prog_3 = @s ach.meals_cooked
execute if score @s ec.quest_id_3 matches 19 run scoreboard players operation @s ec.quest_prog_3 -= @s ec.stat_snap_3
execute if score @s ec.quest_id_3 matches 19 if score @s ec.quest_prog_3 matches 8.. run function evercraft:quests/active/complete_tier3

# C20 - Iron Vein Mastery (prospect)
execute if score @s ec.quest_id_3 matches 20 run scoreboard players operation @s ec.quest_prog_3 = @s ach.prospects_done
execute if score @s ec.quest_id_3 matches 20 run scoreboard players operation @s ec.quest_prog_3 -= @s ec.stat_snap_3
execute if score @s ec.quest_id_3 matches 20 if score @s ec.quest_prog_3 matches 25.. run function evercraft:quests/active/complete_tier3

# C21 - Deep Lore (lore)
execute if score @s ec.quest_id_3 matches 21 run scoreboard players operation @s ec.quest_prog_3 = @s ach.lore_found
execute if score @s ec.quest_id_3 matches 21 run scoreboard players operation @s ec.quest_prog_3 -= @s ec.stat_snap_3
execute if score @s ec.quest_id_3 matches 21 if score @s ec.quest_prog_3 matches 12.. run function evercraft:quests/active/complete_tier3

# C22 - Wither Skeleton Hunter (hunt)
execute if score @s ec.quest_id_3 matches 22 run scoreboard players operation @s ec.quest_prog_3 = @s ec.kills_wither_skeleton
execute if score @s ec.quest_id_3 matches 22 if score @s ec.quest_prog_3 matches 10.. run function evercraft:quests/active/complete_tier3

# C23 - Shulker Boxing (gather)
execute if score @s ec.quest_id_3 matches 23 store result score @s ec.quest_prog_3 run clear @s minecraft:shulker_shell 0
execute if score @s ec.quest_id_3 matches 23 if score @s ec.quest_prog_3 matches 2.. run function evercraft:quests/active/complete_tier3

# C24 - Echo Shard Seeker (gather)
execute if score @s ec.quest_id_3 matches 24 store result score @s ec.quest_prog_3 run clear @s minecraft:echo_shard 0
execute if score @s ec.quest_id_3 matches 24 if score @s ec.quest_prog_3 matches 4.. run function evercraft:quests/active/complete_tier3

# C25 - Breeze Blitz (hunt)
execute if score @s ec.quest_id_3 matches 25 run scoreboard players operation @s ec.quest_prog_3 = @s ec.kills_breeze
execute if score @s ec.quest_id_3 matches 25 if score @s ec.quest_prog_3 matches 5.. run function evercraft:quests/active/complete_tier3

# OPT: Early exit for IDs 1-25 (skip remaining ~25 quest checks)
execute if score @s ec.quest_id_3 matches 1..25 run return 0

# C26 - Village Feast (cook)
execute if score @s ec.quest_id_3 matches 26 run scoreboard players operation @s ec.quest_prog_3 = @s ach.meals_cooked
execute if score @s ec.quest_id_3 matches 26 run scoreboard players operation @s ec.quest_prog_3 -= @s ec.stat_snap_3
execute if score @s ec.quest_id_3 matches 26 if score @s ec.quest_prog_3 matches 15.. run function evercraft:quests/active/complete_tier3

# C27 - Nether Forager (forage)
execute if score @s ec.quest_id_3 matches 27 run scoreboard players operation @s ec.quest_prog_3 = @s ach.forages_done
execute if score @s ec.quest_id_3 matches 27 run scoreboard players operation @s ec.quest_prog_3 -= @s ec.stat_snap_3
execute if score @s ec.quest_id_3 matches 27 if score @s ec.quest_prog_3 matches 30.. run function evercraft:quests/active/complete_tier3

# C28 - Mining Expedition (prospect)
execute if score @s ec.quest_id_3 matches 28 run scoreboard players operation @s ec.quest_prog_3 = @s ach.prospects_done
execute if score @s ec.quest_id_3 matches 28 run scoreboard players operation @s ec.quest_prog_3 -= @s ec.stat_snap_3
execute if score @s ec.quest_id_3 matches 28 if score @s ec.quest_prog_3 matches 30.. run function evercraft:quests/active/complete_tier3

# C29 - Rune Apprentice (glyphforge)
execute if score @s ec.quest_id_3 matches 29 run scoreboard players operation @s ec.quest_prog_3 = @s ach.runes_forged
execute if score @s ec.quest_id_3 matches 29 run scoreboard players operation @s ec.quest_prog_3 -= @s ec.stat_snap_3
execute if score @s ec.quest_id_3 matches 29 if score @s ec.quest_prog_3 matches 1.. run function evercraft:quests/active/complete_tier3

# C30 - Transmutation Trial (transmute)
execute if score @s ec.quest_id_3 matches 30 run scoreboard players operation @s ec.quest_prog_3 = @s ach.transmutes_done
execute if score @s ec.quest_id_3 matches 30 run scoreboard players operation @s ec.quest_prog_3 -= @s ec.stat_snap_3
execute if score @s ec.quest_id_3 matches 30 if score @s ec.quest_prog_3 matches 2.. run function evercraft:quests/active/complete_tier3

# C31 - Ravager Rematch (hunt)
execute if score @s ec.quest_id_3 matches 31 run scoreboard players operation @s ec.quest_prog_3 = @s ec.kills_ravager
execute if score @s ec.quest_id_3 matches 31 if score @s ec.quest_prog_3 matches 1.. run function evercraft:quests/active/complete_tier3

# C32 - Warden Fragment (gather)
execute if score @s ec.quest_id_3 matches 32 store result score @s ec.quest_prog_3 run clear @s minecraft:sculk_catalyst 0
execute if score @s ec.quest_id_3 matches 32 if score @s ec.quest_prog_3 matches 4.. run function evercraft:quests/active/complete_tier3

# C33 - Elder Shard (hunt)
execute if score @s ec.quest_id_3 matches 33 run scoreboard players operation @s ec.quest_prog_3 = @s ec.kills_elder_guardian
execute if score @s ec.quest_id_3 matches 33 if score @s ec.quest_prog_3 matches 1.. run function evercraft:quests/active/complete_tier3

# C34 - Deep Dark Harvest (prospect)
execute if score @s ec.quest_id_3 matches 34 run scoreboard players operation @s ec.quest_prog_3 = @s ach.prospects_done
execute if score @s ec.quest_id_3 matches 34 run scoreboard players operation @s ec.quest_prog_3 -= @s ec.stat_snap_3
execute if score @s ec.quest_id_3 matches 34 if score @s ec.quest_prog_3 matches 15.. run function evercraft:quests/active/complete_tier3

# C35 - Feast Preparation (cook)
execute if score @s ec.quest_id_3 matches 35 run scoreboard players operation @s ec.quest_prog_3 = @s ach.meals_cooked
execute if score @s ec.quest_id_3 matches 35 run scoreboard players operation @s ec.quest_prog_3 -= @s ec.stat_snap_3
execute if score @s ec.quest_id_3 matches 35 if score @s ec.quest_prog_3 matches 3.. run function evercraft:quests/active/complete_tier3

# C36 - Story Collector (lore)
execute if score @s ec.quest_id_3 matches 36 run scoreboard players operation @s ec.quest_prog_3 = @s ach.lore_found
execute if score @s ec.quest_id_3 matches 36 run scoreboard players operation @s ec.quest_prog_3 -= @s ec.stat_snap_3
execute if score @s ec.quest_id_3 matches 36 if score @s ec.quest_prog_3 matches 15.. run function evercraft:quests/active/complete_tier3

# C37 - Wilderness Survey (forage)
execute if score @s ec.quest_id_3 matches 37 run scoreboard players operation @s ec.quest_prog_3 = @s ach.forages_done
execute if score @s ec.quest_id_3 matches 37 run scoreboard players operation @s ec.quest_prog_3 -= @s ec.stat_snap_3
execute if score @s ec.quest_id_3 matches 37 if score @s ec.quest_prog_3 matches 35.. run function evercraft:quests/active/complete_tier3

# OPT: Early exit for IDs 26-37
execute if score @s ec.quest_id_3 matches 26..37 run return 0

# C38 - Sniffer Egg Hunt (gather)
execute if score @s ec.quest_id_3 matches 38 store result score @s ec.quest_prog_3 run clear @s minecraft:sniffer_egg 0
execute if score @s ec.quest_id_3 matches 38 if score @s ec.quest_prog_3 matches 1.. run function evercraft:quests/active/complete_tier3

# C39 - Trial Key Seeker (gather)
execute if score @s ec.quest_id_3 matches 39 store result score @s ec.quest_prog_3 run clear @s minecraft:trial_key 0
execute if score @s ec.quest_id_3 matches 39 if score @s ec.quest_prog_3 matches 2.. run function evercraft:quests/active/complete_tier3

# C40 - Piglin Brute Bounty (hunt)
execute if score @s ec.quest_id_3 matches 40 run scoreboard players operation @s ec.quest_prog_3 = @s ec.kills_piglin_brute
execute if score @s ec.quest_id_3 matches 40 if score @s ec.quest_prog_3 matches 3.. run function evercraft:quests/active/complete_tier3

# C41 - Trident Recovery (gather)
execute if score @s ec.quest_id_3 matches 41 store result score @s ec.quest_prog_3 run clear @s minecraft:trident 0
execute if score @s ec.quest_id_3 matches 41 if score @s ec.quest_prog_3 matches 1.. run function evercraft:quests/active/complete_tier3

# C42 - Heavy Core Salvage (gather)
execute if score @s ec.quest_id_3 matches 42 store result score @s ec.quest_prog_3 run clear @s minecraft:heavy_core 0
execute if score @s ec.quest_id_3 matches 42 if score @s ec.quest_prog_3 matches 1.. run function evercraft:quests/active/complete_tier3

# C43 - End Rod Collector (gather)
execute if score @s ec.quest_id_3 matches 43 store result score @s ec.quest_prog_3 run clear @s minecraft:end_rod 0
execute if score @s ec.quest_id_3 matches 43 if score @s ec.quest_prog_3 matches 16.. run function evercraft:quests/active/complete_tier3
