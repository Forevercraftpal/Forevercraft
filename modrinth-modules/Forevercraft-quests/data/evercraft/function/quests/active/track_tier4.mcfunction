# ============================================================
# Track Tier 4 (Commission) Quest Progress
# ============================================================

# K01 - Wither Skeleton Skulls
execute if score @s ec.quest_id_4 matches 1 run scoreboard players operation @s ec.quest_prog_4 = @s ec.kills_wither_skeleton
execute if score @s ec.quest_id_4 matches 1 if score @s ec.quest_prog_4 matches 20.. run function evercraft:quests/active/complete_tier4

# K02 - Shulker Shells
execute if score @s ec.quest_id_4 matches 2 store result score @s ec.quest_prog_4 run clear @s minecraft:shulker_shell 0
execute if score @s ec.quest_id_4 matches 2 if score @s ec.quest_prog_4 matches 4.. run function evercraft:quests/active/complete_tier4

# K03 - Netherite Scrap
execute if score @s ec.quest_id_4 matches 3 store result score @s ec.quest_prog_4 run clear @s minecraft:netherite_scrap 0
execute if score @s ec.quest_id_4 matches 3 if score @s ec.quest_prog_4 matches 4.. run function evercraft:quests/active/complete_tier4

# K04 - Pillager Raid
execute if score @s ec.quest_id_4 matches 4 run scoreboard players operation @s ec.quest_prog_4 = @s ec.kills_pillager
execute if score @s ec.quest_id_4 matches 4 if score @s ec.quest_prog_4 matches 25.. run function evercraft:quests/active/complete_tier4

# K05 - Ocean Monument Run (explore - advancement trigger)
# K06 - Deep Dark Expedition (explore - advancement trigger)

# K07 - Evoker Bounty
execute if score @s ec.quest_id_4 matches 7 run scoreboard players operation @s ec.quest_prog_4 = @s ec.kills_evoker
execute if score @s ec.quest_id_4 matches 7 if score @s ec.quest_prog_4 matches 3.. run function evercraft:quests/active/complete_tier4

# K08 - Trial Chamber Scout (explore - advancement trigger)

# K09 - Piglin Brute Bounty
execute if score @s ec.quest_id_4 matches 9 run scoreboard players operation @s ec.quest_prog_4 = @s ec.kills_piglin_brute
execute if score @s ec.quest_id_4 matches 9 if score @s ec.quest_prog_4 matches 5.. run function evercraft:quests/active/complete_tier4

# K10 - Emerald Hoard
execute if score @s ec.quest_id_4 matches 10 store result score @s ec.quest_prog_4 run clear @s minecraft:emerald 0
execute if score @s ec.quest_id_4 matches 10 if score @s ec.quest_prog_4 matches 64.. run function evercraft:quests/active/complete_tier4

# K11 - Warden's Shadow (explore - advancement trigger)

# K12 - Ravager Slayer
execute if score @s ec.quest_id_4 matches 12 run scoreboard players operation @s ec.quest_prog_4 = @s ec.kills_ravager
execute if score @s ec.quest_id_4 matches 12 if score @s ec.quest_prog_4 matches 2.. run function evercraft:quests/active/complete_tier4

# K13 - Boss Hunter (boss)
execute if score @s ec.quest_id_4 matches 13 run scoreboard players operation @s ec.quest_prog_4 = @s ach.boss_kills
execute if score @s ec.quest_id_4 matches 13 run scoreboard players operation @s ec.quest_prog_4 -= @s ec.stat_snap_4
execute if score @s ec.quest_id_4 matches 13 if score @s ec.quest_prog_4 matches 1.. run function evercraft:quests/active/complete_tier4

# K14 - Master Chef (cook)
execute if score @s ec.quest_id_4 matches 14 run scoreboard players operation @s ec.quest_prog_4 = @s ach.meals_cooked
execute if score @s ec.quest_id_4 matches 14 run scoreboard players operation @s ec.quest_prog_4 -= @s ec.stat_snap_4
execute if score @s ec.quest_id_4 matches 14 if score @s ec.quest_prog_4 matches 25.. run function evercraft:quests/active/complete_tier4

# K15 - Rune Smith (glyphforge)
execute if score @s ec.quest_id_4 matches 15 run scoreboard players operation @s ec.quest_prog_4 = @s ach.runes_forged
execute if score @s ec.quest_id_4 matches 15 run scoreboard players operation @s ec.quest_prog_4 -= @s ec.stat_snap_4
execute if score @s ec.quest_id_4 matches 15 if score @s ec.quest_prog_4 matches 3.. run function evercraft:quests/active/complete_tier4

# K16 - Transmuter's Art (transmute)
execute if score @s ec.quest_id_4 matches 16 run scoreboard players operation @s ec.quest_prog_4 = @s ach.transmutes_done
execute if score @s ec.quest_id_4 matches 16 run scoreboard players operation @s ec.quest_prog_4 -= @s ec.stat_snap_4
execute if score @s ec.quest_id_4 matches 16 if score @s ec.quest_prog_4 matches 5.. run function evercraft:quests/active/complete_tier4

# K17 - Dungeon Crawler (dungeon)
execute if score @s ec.quest_id_4 matches 17 run scoreboard players operation @s ec.quest_prog_4 = @s ach.dungeons_done
execute if score @s ec.quest_id_4 matches 17 run scoreboard players operation @s ec.quest_prog_4 -= @s ec.stat_snap_4
execute if score @s ec.quest_id_4 matches 17 if score @s ec.quest_prog_4 matches 2.. run function evercraft:quests/active/complete_tier4

# K18 - Lore Archaeologist (lore - uses lore_sets)
execute if score @s ec.quest_id_4 matches 18 run scoreboard players operation @s ec.quest_prog_4 = @s ach.lore_sets
execute if score @s ec.quest_id_4 matches 18 run scoreboard players operation @s ec.quest_prog_4 -= @s ec.stat_snap_4
execute if score @s ec.quest_id_4 matches 18 if score @s ec.quest_prog_4 matches 1.. run function evercraft:quests/active/complete_tier4

# K19 - Veteran Forager (forage)
execute if score @s ec.quest_id_4 matches 19 run scoreboard players operation @s ec.quest_prog_4 = @s ach.forages_done
execute if score @s ec.quest_id_4 matches 19 run scoreboard players operation @s ec.quest_prog_4 -= @s ec.stat_snap_4
execute if score @s ec.quest_id_4 matches 19 if score @s ec.quest_prog_4 matches 50.. run function evercraft:quests/active/complete_tier4

# K20 - Grand Prospector (prospect)
execute if score @s ec.quest_id_4 matches 20 run scoreboard players operation @s ec.quest_prog_4 = @s ach.prospects_done
execute if score @s ec.quest_id_4 matches 20 run scoreboard players operation @s ec.quest_prog_4 -= @s ec.stat_snap_4
execute if score @s ec.quest_id_4 matches 20 if score @s ec.quest_prog_4 matches 50.. run function evercraft:quests/active/complete_tier4

# K21 - Conqueror's Feast (cook)
execute if score @s ec.quest_id_4 matches 21 run scoreboard players operation @s ec.quest_prog_4 = @s ach.meals_cooked
execute if score @s ec.quest_id_4 matches 21 run scoreboard players operation @s ec.quest_prog_4 -= @s ec.stat_snap_4
execute if score @s ec.quest_id_4 matches 21 if score @s ec.quest_prog_4 matches 5.. run function evercraft:quests/active/complete_tier4

# K22 - Ancient Lore (lore)
execute if score @s ec.quest_id_4 matches 22 run scoreboard players operation @s ec.quest_prog_4 = @s ach.lore_found
execute if score @s ec.quest_id_4 matches 22 run scoreboard players operation @s ec.quest_prog_4 -= @s ec.stat_snap_4
execute if score @s ec.quest_id_4 matches 22 if score @s ec.quest_prog_4 matches 25.. run function evercraft:quests/active/complete_tier4

# K23 - Battle Rations (cook)
execute if score @s ec.quest_id_4 matches 23 run scoreboard players operation @s ec.quest_prog_4 = @s ach.meals_cooked
execute if score @s ec.quest_id_4 matches 23 run scoreboard players operation @s ec.quest_prog_4 -= @s ec.stat_snap_4
execute if score @s ec.quest_id_4 matches 23 if score @s ec.quest_prog_4 matches 20.. run function evercraft:quests/active/complete_tier4

# K24 - Totem Seeker (boss)
execute if score @s ec.quest_id_4 matches 24 run scoreboard players operation @s ec.quest_prog_4 = @s ach.boss_kills
execute if score @s ec.quest_id_4 matches 24 run scoreboard players operation @s ec.quest_prog_4 -= @s ec.stat_snap_4
execute if score @s ec.quest_id_4 matches 24 if score @s ec.quest_prog_4 matches 2.. run function evercraft:quests/active/complete_tier4

# K25 - Netherwalker (explore - advancement trigger)

# OPT: Early exit for IDs 1-25 (skip remaining ~25 quest checks)
execute if score @s ec.quest_id_4 matches 1..25 run return 0

# K26 - Dungeon Sprint (dungeon)
execute if score @s ec.quest_id_4 matches 26 run scoreboard players operation @s ec.quest_prog_4 = @s ach.dungeons_done
execute if score @s ec.quest_id_4 matches 26 run scoreboard players operation @s ec.quest_prog_4 -= @s ec.stat_snap_4
execute if score @s ec.quest_id_4 matches 26 if score @s ec.quest_prog_4 matches 3.. run function evercraft:quests/active/complete_tier4

# K27 - Rune Enchanter (glyphforge)
execute if score @s ec.quest_id_4 matches 27 run scoreboard players operation @s ec.quest_prog_4 = @s ach.runes_forged
execute if score @s ec.quest_id_4 matches 27 run scoreboard players operation @s ec.quest_prog_4 -= @s ec.stat_snap_4
execute if score @s ec.quest_id_4 matches 27 if score @s ec.quest_prog_4 matches 5.. run function evercraft:quests/active/complete_tier4

# K28 - End Island Chain (explore - advancement trigger)

# K29 - Transmuter's Gambit (transmute)
execute if score @s ec.quest_id_4 matches 29 run scoreboard players operation @s ec.quest_prog_4 = @s ach.transmutes_done
execute if score @s ec.quest_id_4 matches 29 run scoreboard players operation @s ec.quest_prog_4 -= @s ec.stat_snap_4
execute if score @s ec.quest_id_4 matches 29 if score @s ec.quest_prog_4 matches 10.. run function evercraft:quests/active/complete_tier4

# K30 - Wild Gourmet (cook - threshold 30 on meals_cooked)
execute if score @s ec.quest_id_4 matches 30 run scoreboard players operation @s ec.quest_prog_4 = @s ach.meals_cooked
execute if score @s ec.quest_id_4 matches 30 run scoreboard players operation @s ec.quest_prog_4 -= @s ec.stat_snap_4
execute if score @s ec.quest_id_4 matches 30 if score @s ec.quest_prog_4 matches 30.. run function evercraft:quests/active/complete_tier4

# K31 - Deep Miner (prospect)
execute if score @s ec.quest_id_4 matches 31 run scoreboard players operation @s ec.quest_prog_4 = @s ach.prospects_done
execute if score @s ec.quest_id_4 matches 31 run scoreboard players operation @s ec.quest_prog_4 -= @s ec.stat_snap_4
execute if score @s ec.quest_id_4 matches 31 if score @s ec.quest_prog_4 matches 75.. run function evercraft:quests/active/complete_tier4

# K32 - Forgotten Library (lore - uses lore_sets)
execute if score @s ec.quest_id_4 matches 32 run scoreboard players operation @s ec.quest_prog_4 = @s ach.lore_sets
execute if score @s ec.quest_id_4 matches 32 run scoreboard players operation @s ec.quest_prog_4 -= @s ec.stat_snap_4
execute if score @s ec.quest_id_4 matches 32 if score @s ec.quest_prog_4 matches 2.. run function evercraft:quests/active/complete_tier4

# K33 - Elder Guardian Pair (hunt)
execute if score @s ec.quest_id_4 matches 33 run scoreboard players operation @s ec.quest_prog_4 = @s ec.kills_elder_guardian
execute if score @s ec.quest_id_4 matches 33 if score @s ec.quest_prog_4 matches 2.. run function evercraft:quests/active/complete_tier4

# K34 - Trial Chamber Sweep (explore - advancement trigger)

# K35 - Netherite Smith (craft)
execute if score @s ec.quest_id_4 matches 35 store result score @s ec.quest_prog_4 run clear @s minecraft:netherite_ingot 0
execute if score @s ec.quest_id_4 matches 35 if score @s ec.quest_prog_4 matches 2.. run function evercraft:quests/active/complete_tier4

# K36 - Diamond Hoard (gather)
execute if score @s ec.quest_id_4 matches 36 store result score @s ec.quest_prog_4 run clear @s minecraft:diamond 0
execute if score @s ec.quest_id_4 matches 36 if score @s ec.quest_prog_4 matches 32.. run function evercraft:quests/active/complete_tier4

# K37 - Monument Plunder (explore - advancement trigger)

# OPT: Early exit for IDs 26-37
execute if score @s ec.quest_id_4 matches 26..37 run return 0

# K38 - Bastion Raid (explore - advancement trigger)

# K39 - Nether Cuisine (cook)
execute if score @s ec.quest_id_4 matches 39 run scoreboard players operation @s ec.quest_prog_4 = @s ach.meals_cooked
execute if score @s ec.quest_id_4 matches 39 run scoreboard players operation @s ec.quest_prog_4 -= @s ec.stat_snap_4
execute if score @s ec.quest_id_4 matches 39 if score @s ec.quest_prog_4 matches 30.. run function evercraft:quests/active/complete_tier4

# K40 - Ancient Debris Stash (gather)
execute if score @s ec.quest_id_4 matches 40 store result score @s ec.quest_prog_4 run clear @s minecraft:ancient_debris 0
execute if score @s ec.quest_id_4 matches 40 if score @s ec.quest_prog_4 matches 8.. run function evercraft:quests/active/complete_tier4

# K41 - Evoker Circle (hunt)
execute if score @s ec.quest_id_4 matches 41 run scoreboard players operation @s ec.quest_prog_4 = @s ec.kills_evoker
execute if score @s ec.quest_id_4 matches 41 if score @s ec.quest_prog_4 matches 5.. run function evercraft:quests/active/complete_tier4

# K42 - Runic Master (glyphforge)
execute if score @s ec.quest_id_4 matches 42 run scoreboard players operation @s ec.quest_prog_4 = @s ach.runes_forged
execute if score @s ec.quest_id_4 matches 42 run scoreboard players operation @s ec.quest_prog_4 -= @s ec.stat_snap_4
execute if score @s ec.quest_id_4 matches 42 if score @s ec.quest_prog_4 matches 8.. run function evercraft:quests/active/complete_tier4
