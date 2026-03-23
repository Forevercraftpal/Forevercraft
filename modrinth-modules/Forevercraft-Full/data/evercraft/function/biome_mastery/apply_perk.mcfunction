# Biome Mastery — Apply permanent perk when in a mastered biome
# @s = player, ec.biome_id = current biome, ec.bm_level = current biome's mastery level
# Called every 5s from player_tick and on biome change

# Remove attribute-based perks (reset before reapplying)
attribute @s movement_speed modifier remove evercraft:biome_mastery_perk
attribute @s attack_speed modifier remove evercraft:biome_mastery_perk
attribute @s armor modifier remove evercraft:biome_mastery_perk
attribute @s luck modifier remove evercraft:biome_mastery_perk

# Only apply if biome is mastered (level 5 = 108000+ ticks)
execute unless score @s ec.bm_level matches 5 run return 0

# Plains (0): +10% movement speed
execute if score @s ec.biome_id matches 0 run attribute @s movement_speed modifier add evercraft:biome_mastery_perk 0.1 add_multiplied_base

# Forest (1): +15% attack speed
execute if score @s ec.biome_id matches 1 run attribute @s attack_speed modifier add evercraft:biome_mastery_perk 0.15 add_multiplied_base

# Flower Forest (2): Regeneration I (7s)
execute if score @s ec.biome_id matches 2 run effect give @s regeneration 7 0 true

# Dark Forest (3): Night Vision (7s)
execute if score @s ec.biome_id matches 3 run effect give @s night_vision 7 0 true

# Taiga (4): +2 armor
execute if score @s ec.biome_id matches 4 run attribute @s armor modifier add evercraft:biome_mastery_perk 2 add_value

# Mountain (5): Slow Falling (7s) — prevents fall damage
execute if score @s ec.biome_id matches 5 run effect give @s slow_falling 7 0 true

# Jungle (6): +25% forage bonus (tag checked in forage system)
execute if score @s ec.biome_id matches 6 run tag @s add ec.bm_forage_bonus

# Desert (7): Saturation I (7s) — no hunger drain
execute if score @s ec.biome_id matches 7 run effect give @s saturation 7 0 true

# Savanna (8): +10% movement speed
execute if score @s ec.biome_id matches 8 run attribute @s movement_speed modifier add evercraft:biome_mastery_perk 0.1 add_multiplied_base

# Ocean (9): Water Breathing (7s)
execute if score @s ec.biome_id matches 9 run effect give @s water_breathing 7 0 true

# River (10): Dolphin's Grace (7s)
execute if score @s ec.biome_id matches 10 run effect give @s dolphins_grace 7 0 true

# Swamp (11): Resistance I (7s)
execute if score @s ec.biome_id matches 11 run effect give @s resistance 7 0 true

# Mushroom (12): Saturation + Regeneration (7s)
execute if score @s ec.biome_id matches 12 run effect give @s saturation 7 0 true
execute if score @s ec.biome_id matches 12 run effect give @s regeneration 7 0 true

# Ice (13): Fire Resistance (7s) — thematic irony, practical warmth
execute if score @s ec.biome_id matches 13 run effect give @s fire_resistance 7 0 true

# Badlands (14): +0.5 luck
execute if score @s ec.biome_id matches 14 run attribute @s luck modifier add evercraft:biome_mastery_perk 0.5 add_value

# Lush Caves (15): Regeneration I (7s)
execute if score @s ec.biome_id matches 15 run effect give @s regeneration 7 0 true

# Dripstone (16): Haste I (7s)
execute if score @s ec.biome_id matches 16 run effect give @s haste 7 0 true

# Deep Dark (17): Night Vision (7s)
execute if score @s ec.biome_id matches 17 run effect give @s night_vision 7 0 true

# Nether Wastes (18): Fire Resistance (7s)
execute if score @s ec.biome_id matches 18 run effect give @s fire_resistance 7 0 true

# Crimson Forest (19): Strength I (7s)
execute if score @s ec.biome_id matches 19 run effect give @s strength 7 0 true

# Warped Forest (20): Speed I + Jump Boost I (7s)
execute if score @s ec.biome_id matches 20 run effect give @s speed 7 0 true
execute if score @s ec.biome_id matches 20 run effect give @s jump_boost 7 0 true

# Basalt Deltas (21): Fire Resistance + Resistance I (7s)
execute if score @s ec.biome_id matches 21 run effect give @s fire_resistance 7 0 true
execute if score @s ec.biome_id matches 21 run effect give @s resistance 7 0 true

# Soul Valley (22): Speed II (7s)
execute if score @s ec.biome_id matches 22 run effect give @s speed 7 1 true

# The End (23): Slow Falling (7s)
execute if score @s ec.biome_id matches 23 run effect give @s slow_falling 7 0 true

# Windswept (24): Speed I + Jump Boost I (7s)
execute if score @s ec.biome_id matches 24 run effect give @s speed 7 0 true
execute if score @s ec.biome_id matches 24 run effect give @s jump_boost 7 0 true
