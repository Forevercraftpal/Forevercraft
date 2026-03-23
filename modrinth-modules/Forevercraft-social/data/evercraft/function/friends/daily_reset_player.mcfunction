# Friend System — Reset daily_heart flags for one player's friend list
# @s = online player

# Get UUID3
execute store result storage evercraft:friends temp.reset_uuid3 int 1 run data get entity @s UUID[3]

# Call macro to iterate and reset
function evercraft:friends/daily_reset_do with storage evercraft:friends temp
