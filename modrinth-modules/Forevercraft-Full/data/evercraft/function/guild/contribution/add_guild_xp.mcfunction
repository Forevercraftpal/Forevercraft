# Guild Contribution — Add XP to the guild itself
# @s = contributing player, #guild_xp_add ec.temp = XP to add
# Finds the guild marker by ID and adds XP

# Set up predicate search
scoreboard players operation #Search ec.guild_id = @s ec.guild_id

# Find guild marker and add XP (markers at 0 -61 0, within 2 blocks to catch adjacent)
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run function evercraft:guild/contribution/apply_guild_xp
