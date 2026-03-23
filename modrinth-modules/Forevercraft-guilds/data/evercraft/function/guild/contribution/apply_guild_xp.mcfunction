# Guild — Apply XP to guild marker and check level up
# @s = guild marker entity, #guild_xp_add ec.temp = XP to add

# Get current XP from marker NBT into score
execute store result score #guild_cur_xp ec.temp run data get entity @s data.xp

# Add XP
scoreboard players operation #guild_cur_xp ec.temp += #guild_xp_add ec.temp

# Write back
execute store result entity @s data.xp int 1 run scoreboard players get #guild_cur_xp ec.temp

# Check for level up (dynamic threshold: 100 * level^3)
execute store result score #guild_cur_lvl ec.temp run data get entity @s data.level
function evercraft:guild/xp/check_levelup
