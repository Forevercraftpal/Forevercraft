# Guild XP — Dynamic level-up check
# @s = guild marker entity
# #guild_cur_xp ec.temp = current XP, #guild_cur_lvl ec.temp = current level
# Computes threshold = 100 * level^3, levels up if met, recurses

# Already at max level?
execute if score #guild_cur_lvl ec.temp matches 100.. run return 0

# Next level = current + 1
scoreboard players operation #guild_next_lvl ec.temp = #guild_cur_lvl ec.temp
scoreboard players add #guild_next_lvl ec.temp 1

# Compute threshold = 100 * next_level^3
# Step 1: square = next_level * next_level
scoreboard players operation #guild_threshold ec.temp = #guild_next_lvl ec.temp
scoreboard players operation #guild_threshold ec.temp *= #guild_next_lvl ec.temp
# Step 2: cube = square * next_level
scoreboard players operation #guild_threshold ec.temp *= #guild_next_lvl ec.temp
# Step 3: threshold = cube * 100
scoreboard players operation #guild_threshold ec.temp *= #100 ec.const

# Check if current XP meets threshold
execute if score #guild_cur_xp ec.temp >= #guild_threshold ec.temp run function evercraft:guild/level_up

# Recurse: level_up updates #guild_cur_lvl, check again for multi-level jumps
execute store result score #guild_check_lvl ec.temp run data get entity @s data.level
execute unless score #guild_check_lvl ec.temp = #guild_cur_lvl ec.temp run function evercraft:guild/xp/check_levelup_recurse
