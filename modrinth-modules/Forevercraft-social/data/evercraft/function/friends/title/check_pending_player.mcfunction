# Friend Title — Check if this player has a pending title notification ready
# @s = player

# Read self UUID3 for storage key
execute store result storage evercraft:friends temp.notify_uuid3 int 1 run data get entity @s UUID[3]
function evercraft:friends/title/check_pending_inner with storage evercraft:friends temp
