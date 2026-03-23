# Guild — Level up the guild
# @s = guild marker entity, #guild_cur_lvl ec.temp = current level (about to increase)

# Increment level
scoreboard players add #guild_cur_lvl ec.temp 1
execute store result entity @s data.level int 1 run scoreboard players get #guild_cur_lvl ec.temp

# Get guild name for announcement
data modify storage evercraft:guild temp.guild_name set from entity @s data.name
execute store result storage evercraft:guild temp.new_level int 1 run scoreboard players get #guild_cur_lvl ec.temp

# Announce to all guild members
function evercraft:guild/announce_level_up with storage evercraft:guild temp
