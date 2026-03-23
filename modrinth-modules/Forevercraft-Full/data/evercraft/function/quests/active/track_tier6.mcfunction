# ============================================================
# Track Tier 6 (Heroic) Quest Progress
# ============================================================

# H01 - Wither Slayer
execute if score @s ec.quest_id_6 matches 1 run scoreboard players operation @s ec.quest_prog_6 = @s ec.kills_wither
execute if score @s ec.quest_id_6 matches 1 if score @s ec.quest_prog_6 matches 1.. run function evercraft:quests/active/complete_tier6

# H02 - Dragon Slayer
execute if score @s ec.quest_id_6 matches 2 run scoreboard players operation @s ec.quest_prog_6 = @s ec.kills_ender_dragon
execute if score @s ec.quest_id_6 matches 2 if score @s ec.quest_prog_6 matches 1.. run function evercraft:quests/active/complete_tier6

# H03 - Warden Confrontation
execute if score @s ec.quest_id_6 matches 3 run scoreboard players operation @s ec.quest_prog_6 = @s ec.kills_warden
execute if score @s ec.quest_id_6 matches 3 if score @s ec.quest_prog_6 matches 1.. run function evercraft:quests/active/complete_tier6

# H04 - The Grand Harvest (10 of each crop type - composite check)
# H05 - Master Builder (8 netherite ingots)
execute if score @s ec.quest_id_6 matches 5 store result score @s ec.quest_prog_6 run clear @s minecraft:netherite_ingot 0
execute if score @s ec.quest_id_6 matches 5 if score @s ec.quest_prog_6 matches 8.. run function evercraft:quests/active/complete_tier6

# H06 - Ultimate Explorer (12 unique biomes - advancement trigger)
# H07 - Raid Champion (complete a raid - advancement trigger)

# H08 - Treasure Fleet (5 shipwrecks)
# Tracked via exploration counter

# H09 - Nether Domination (100 nether mob kills - composite)
# H10 - The Void Walker (3 end cities - composite)

# H11 - Hollow King's Bane (boss - defeat the Hollow King)
execute if score @s ec.quest_id_6 matches 11 run scoreboard players operation @s ec.quest_prog_6 = @s ach.boss_kills
execute if score @s ec.quest_id_6 matches 11 if score @s ec.quest_prog_6 matches 1.. run function evercraft:quests/active/complete_tier6

# H12 - Verdant Guardian (boss - defeat the Verdant Warden)
execute if score @s ec.quest_id_6 matches 12 run scoreboard players operation @s ec.quest_prog_6 = @s ach.boss_kills
execute if score @s ec.quest_id_6 matches 12 if score @s ec.quest_prog_6 matches 1.. run function evercraft:quests/active/complete_tier6

# H13 - Stormbreaker (boss - defeat the Stormforged)
execute if score @s ec.quest_id_6 matches 13 run scoreboard players operation @s ec.quest_prog_6 = @s ach.boss_kills
execute if score @s ec.quest_id_6 matches 13 if score @s ec.quest_prog_6 matches 1.. run function evercraft:quests/active/complete_tier6

# H14 - Tidecaller's End (boss - defeat the Tidecaller)
execute if score @s ec.quest_id_6 matches 14 run scoreboard players operation @s ec.quest_prog_6 = @s ach.boss_kills
execute if score @s ec.quest_id_6 matches 14 if score @s ec.quest_prog_6 matches 1.. run function evercraft:quests/active/complete_tier6

# H15 - Earthshaker's Fall (boss - defeat the Earthshaker)
execute if score @s ec.quest_id_6 matches 15 run scoreboard players operation @s ec.quest_prog_6 = @s ach.boss_kills
execute if score @s ec.quest_id_6 matches 15 if score @s ec.quest_prog_6 matches 1.. run function evercraft:quests/active/complete_tier6

# H16 - Nightmare Slayer (boss - defeat the Nightmare)
execute if score @s ec.quest_id_6 matches 16 run scoreboard players operation @s ec.quest_prog_6 = @s ach.boss_kills
execute if score @s ec.quest_id_6 matches 16 if score @s ec.quest_prog_6 matches 1.. run function evercraft:quests/active/complete_tier6

# H17 - Infernal Titan's Doom (boss - defeat the Infernal Titan)
execute if score @s ec.quest_id_6 matches 17 run scoreboard players operation @s ec.quest_prog_6 = @s ach.boss_kills
execute if score @s ec.quest_id_6 matches 17 if score @s ec.quest_prog_6 matches 1.. run function evercraft:quests/active/complete_tier6

# H18 - Soul Warden's Rest (boss - defeat the Soul Warden)
execute if score @s ec.quest_id_6 matches 18 run scoreboard players operation @s ec.quest_prog_6 = @s ach.boss_kills
execute if score @s ec.quest_id_6 matches 18 if score @s ec.quest_prog_6 matches 1.. run function evercraft:quests/active/complete_tier6

# H19 - Crimson Carnage (boss - defeat the Crimson Behemoth)
execute if score @s ec.quest_id_6 matches 19 run scoreboard players operation @s ec.quest_prog_6 = @s ach.boss_kills
execute if score @s ec.quest_id_6 matches 19 if score @s ec.quest_prog_6 matches 1.. run function evercraft:quests/active/complete_tier6

# H20 - Void Emperor (boss - defeat the Void Sovereign)
execute if score @s ec.quest_id_6 matches 20 run scoreboard players operation @s ec.quest_prog_6 = @s ach.boss_kills
execute if score @s ec.quest_id_6 matches 20 if score @s ec.quest_prog_6 matches 1.. run function evercraft:quests/active/complete_tier6

# H21 - End Architect's Fall (boss - defeat the Ender Architect)
execute if score @s ec.quest_id_6 matches 21 run scoreboard players operation @s ec.quest_prog_6 = @s ach.boss_kills
execute if score @s ec.quest_id_6 matches 21 if score @s ec.quest_prog_6 matches 1.. run function evercraft:quests/active/complete_tier6

# H22 - Legendary Chef (cook - 5 legendary feasts, threshold 100)
execute if score @s ec.quest_id_6 matches 22 run scoreboard players operation @s ec.quest_prog_6 = @s ach.meals_cooked
execute if score @s ec.quest_id_6 matches 22 if score @s ec.quest_prog_6 matches 100.. run function evercraft:quests/active/complete_tier6

# H23 - Dungeon Conqueror (dungeon - 8 dungeons)
execute if score @s ec.quest_id_6 matches 23 run scoreboard players operation @s ec.quest_prog_6 = @s ach.dungeons_done
execute if score @s ec.quest_id_6 matches 23 if score @s ec.quest_prog_6 matches 8.. run function evercraft:quests/active/complete_tier6

# H24 - Lore Sage (lore - 8 lore sets)
execute if score @s ec.quest_id_6 matches 24 run scoreboard players operation @s ec.quest_prog_6 = @s ach.lore_sets
execute if score @s ec.quest_id_6 matches 24 if score @s ec.quest_prog_6 matches 8.. run function evercraft:quests/active/complete_tier6

# H25 - Runic Legend (glyphforge - 20 runes)
execute if score @s ec.quest_id_6 matches 25 run scoreboard players operation @s ec.quest_prog_6 = @s ach.runes_forged
execute if score @s ec.quest_id_6 matches 25 if score @s ec.quest_prog_6 matches 20.. run function evercraft:quests/active/complete_tier6

# H26 - The Grand Transmutation (transmute - 50 items)
execute if score @s ec.quest_id_6 matches 26 run scoreboard players operation @s ec.quest_prog_6 = @s ach.transmutes_done
execute if score @s ec.quest_id_6 matches 26 if score @s ec.quest_prog_6 matches 50.. run function evercraft:quests/active/complete_tier6

# H27 - Boss Rush (boss - 5 world bosses)
execute if score @s ec.quest_id_6 matches 27 run scoreboard players operation @s ec.quest_prog_6 = @s ach.boss_kills
execute if score @s ec.quest_id_6 matches 27 if score @s ec.quest_prog_6 matches 5.. run function evercraft:quests/active/complete_tier6

# H28 - Triple Wither (hunt - defeat the wither 3 times)
execute if score @s ec.quest_id_6 matches 28 run scoreboard players operation @s ec.quest_prog_6 = @s ec.kills_wither
execute if score @s ec.quest_id_6 matches 28 if score @s ec.quest_prog_6 matches 3.. run function evercraft:quests/active/complete_tier6

# H29 - All-Biome Gourmet (cook - master 5 recipe categories, threshold 150)
execute if score @s ec.quest_id_6 matches 29 run scoreboard players operation @s ec.quest_prog_6 = @s ach.meals_cooked
execute if score @s ec.quest_id_6 matches 29 if score @s ec.quest_prog_6 matches 150.. run function evercraft:quests/active/complete_tier6

# H30 - The Eternal Harvest (forage + prospect - 200 total combined)
execute if score @s ec.quest_id_6 matches 30 run scoreboard players operation @s ec.quest_prog_6 = @s ach.forages_done
execute if score @s ec.quest_id_6 matches 30 run scoreboard players operation @s ec.quest_prog_6 += @s ach.prospects_done
execute if score @s ec.quest_id_6 matches 30 if score @s ec.quest_prog_6 matches 200.. run function evercraft:quests/active/complete_tier6
