# ============================================================
# Track Tier 5 (Expedition) Quest Progress
# ============================================================

# X01 - Elder Guardian Hunt
execute if score @s ec.quest_id_5 matches 1 run scoreboard players operation @s ec.quest_prog_5 = @s ec.kills_elder_guardian
execute if score @s ec.quest_id_5 matches 1 if score @s ec.quest_prog_5 matches 1.. run function evercraft:quests/active/complete_tier5

# X02 - End City Raid (explore - advancement trigger)
# X03 - Bastion Plunder (explore - advancement trigger)

# X04 - Dragon's Breath
execute if score @s ec.quest_id_5 matches 4 store result score @s ec.quest_prog_5 run clear @s minecraft:dragon_breath 0
execute if score @s ec.quest_id_5 matches 4 if score @s ec.quest_prog_5 matches 16.. run function evercraft:quests/active/complete_tier5

# X05 - Heart of the Sea
execute if score @s ec.quest_id_5 matches 5 store result score @s ec.quest_prog_5 run clear @s minecraft:heart_of_the_sea 0
execute if score @s ec.quest_id_5 matches 5 if score @s ec.quest_prog_5 matches 1.. run function evercraft:quests/active/complete_tier5

# X06 - Stronghold Delve (explore - advancement trigger)
# X07 - Nether Star Fragment (50 nether mob kills - composite)
# X08 - Fortress Conqueror (explore - advancement trigger)
# X09 - Mansion Raid (explore - advancement trigger)

# X10 - Breeze Bounty
execute if score @s ec.quest_id_5 matches 10 run scoreboard players operation @s ec.quest_prog_5 = @s ec.kills_breeze
execute if score @s ec.quest_id_5 matches 10 if score @s ec.quest_prog_5 matches 10.. run function evercraft:quests/active/complete_tier5

# X11 - Boss Slayer (boss - 3 world bosses)
execute if score @s ec.quest_id_5 matches 11 run scoreboard players operation @s ec.quest_prog_5 = @s ach.boss_kills
execute if score @s ec.quest_id_5 matches 11 if score @s ec.quest_prog_5 matches 3.. run function evercraft:quests/active/complete_tier5

# X12 - Dungeon Master (dungeon - 5 dungeons)
execute if score @s ec.quest_id_5 matches 12 run scoreboard players operation @s ec.quest_prog_5 = @s ach.dungeons_done
execute if score @s ec.quest_id_5 matches 12 if score @s ec.quest_prog_5 matches 5.. run function evercraft:quests/active/complete_tier5

# X13 - Head Chef (cook - 50 meals)
execute if score @s ec.quest_id_5 matches 13 run scoreboard players operation @s ec.quest_prog_5 = @s ach.meals_cooked
execute if score @s ec.quest_id_5 matches 13 if score @s ec.quest_prog_5 matches 50.. run function evercraft:quests/active/complete_tier5

# X14 - Lorekeeper (lore - 3 lore sets)
execute if score @s ec.quest_id_5 matches 14 run scoreboard players operation @s ec.quest_prog_5 = @s ach.lore_sets
execute if score @s ec.quest_id_5 matches 14 if score @s ec.quest_prog_5 matches 3.. run function evercraft:quests/active/complete_tier5

# X15 - Overworld Champion (boss - 3 overworld bosses)
execute if score @s ec.quest_id_5 matches 15 run scoreboard players operation @s ec.quest_prog_5 = @s ach.boss_kills
execute if score @s ec.quest_id_5 matches 15 if score @s ec.quest_prog_5 matches 3.. run function evercraft:quests/active/complete_tier5

# X16 - Grand Transmuter (transmute - 20 items)
execute if score @s ec.quest_id_5 matches 16 run scoreboard players operation @s ec.quest_prog_5 = @s ach.transmutes_done
execute if score @s ec.quest_id_5 matches 16 if score @s ec.quest_prog_5 matches 20.. run function evercraft:quests/active/complete_tier5

# X17 - Runemaster (glyphforge - 12 runes)
execute if score @s ec.quest_id_5 matches 17 run scoreboard players operation @s ec.quest_prog_5 = @s ach.runes_forged
execute if score @s ec.quest_id_5 matches 17 if score @s ec.quest_prog_5 matches 12.. run function evercraft:quests/active/complete_tier5

# X18 - Feast for the Ages (cook - 10 feast meals, threshold 60)
execute if score @s ec.quest_id_5 matches 18 run scoreboard players operation @s ec.quest_prog_5 = @s ach.meals_cooked
execute if score @s ec.quest_id_5 matches 18 if score @s ec.quest_prog_5 matches 60.. run function evercraft:quests/active/complete_tier5

# X19 - Nether Boss Hunter (boss - 2 nether bosses, threshold 5)
execute if score @s ec.quest_id_5 matches 19 run scoreboard players operation @s ec.quest_prog_5 = @s ach.boss_kills
execute if score @s ec.quest_id_5 matches 19 if score @s ec.quest_prog_5 matches 5.. run function evercraft:quests/active/complete_tier5

# X20 - Complete Forager (forage - 100 bushes)
execute if score @s ec.quest_id_5 matches 20 run scoreboard players operation @s ec.quest_prog_5 = @s ach.forages_done
execute if score @s ec.quest_id_5 matches 20 if score @s ec.quest_prog_5 matches 100.. run function evercraft:quests/active/complete_tier5

# X21 - Master Prospector (prospect - 100 nodes)
execute if score @s ec.quest_id_5 matches 21 run scoreboard players operation @s ec.quest_prog_5 = @s ach.prospects_done
execute if score @s ec.quest_id_5 matches 21 if score @s ec.quest_prog_5 matches 100.. run function evercraft:quests/active/complete_tier5

# X22 - Warden's Dare (hunt - 1 warden)
execute if score @s ec.quest_id_5 matches 22 run scoreboard players operation @s ec.quest_prog_5 = @s ec.kills_warden
execute if score @s ec.quest_id_5 matches 22 if score @s ec.quest_prog_5 matches 1.. run function evercraft:quests/active/complete_tier5

# X23 - Triple Monument (explore - advancement trigger)

# X24 - Netherite Arsenal (craft - 4 netherite ingots)
execute if score @s ec.quest_id_5 matches 24 store result score @s ec.quest_prog_5 run clear @s minecraft:netherite_ingot 0
execute if score @s ec.quest_id_5 matches 24 if score @s ec.quest_prog_5 matches 4.. run function evercraft:quests/active/complete_tier5

# X25 - Full Dungeon Tour (dungeon - 5 unique dungeons, threshold 5)
execute if score @s ec.quest_id_5 matches 25 run scoreboard players operation @s ec.quest_prog_5 = @s ach.dungeons_done
execute if score @s ec.quest_id_5 matches 25 if score @s ec.quest_prog_5 matches 5.. run function evercraft:quests/active/complete_tier5

# X26 - Lore Scholar (lore - 5 lore sets)
execute if score @s ec.quest_id_5 matches 26 run scoreboard players operation @s ec.quest_prog_5 = @s ach.lore_sets
execute if score @s ec.quest_id_5 matches 26 if score @s ec.quest_prog_5 matches 5.. run function evercraft:quests/active/complete_tier5

# X27 - Multi-Village Chef (cook - 40 meals)
execute if score @s ec.quest_id_5 matches 27 run scoreboard players operation @s ec.quest_prog_5 = @s ach.meals_cooked
execute if score @s ec.quest_id_5 matches 27 if score @s ec.quest_prog_5 matches 40.. run function evercraft:quests/active/complete_tier5

# X28 - Stronghold Dive (explore - advancement trigger)

# X29 - Shulker Shell Hoard (gather - 8 shulker shells)
execute if score @s ec.quest_id_5 matches 29 store result score @s ec.quest_prog_5 run clear @s minecraft:shulker_shell 0
execute if score @s ec.quest_id_5 matches 29 if score @s ec.quest_prog_5 matches 8.. run function evercraft:quests/active/complete_tier5

# X30 - Nether Star Hunt (boss - 3 nether bosses, threshold 8)
execute if score @s ec.quest_id_5 matches 30 run scoreboard players operation @s ec.quest_prog_5 = @s ach.boss_kills
execute if score @s ec.quest_id_5 matches 30 if score @s ec.quest_prog_5 matches 8.. run function evercraft:quests/active/complete_tier5

# X31 - Rune Collection (glyphforge - 15 runes)
execute if score @s ec.quest_id_5 matches 31 run scoreboard players operation @s ec.quest_prog_5 = @s ach.runes_forged
execute if score @s ec.quest_id_5 matches 31 if score @s ec.quest_prog_5 matches 15.. run function evercraft:quests/active/complete_tier5

# X32 - Transmutation Mastery (transmute - 30 items)
execute if score @s ec.quest_id_5 matches 32 run scoreboard players operation @s ec.quest_prog_5 = @s ach.transmutes_done
execute if score @s ec.quest_id_5 matches 32 if score @s ec.quest_prog_5 matches 30.. run function evercraft:quests/active/complete_tier5

# X33 - Dragon Breath Cache (gather - 32 dragon's breath)
execute if score @s ec.quest_id_5 matches 33 store result score @s ec.quest_prog_5 run clear @s minecraft:dragon_breath 0
execute if score @s ec.quest_id_5 matches 33 if score @s ec.quest_prog_5 matches 32.. run function evercraft:quests/active/complete_tier5

# X34 - Deep Dark Plunder (explore - advancement trigger)
# X35 - Trial Champion (explore - advancement trigger)
