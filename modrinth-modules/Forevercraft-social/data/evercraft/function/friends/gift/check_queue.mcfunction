# Friend Gift — Check for queued gifts on login
# @s = player who just joined

# Get UUID3
execute store result storage evercraft:friends temp.login_uuid3 int 1 run data get entity @s UUID[3]

# Check if storage exists and has gifts queued
function evercraft:friends/gift/check_queue_do with storage evercraft:friends temp
