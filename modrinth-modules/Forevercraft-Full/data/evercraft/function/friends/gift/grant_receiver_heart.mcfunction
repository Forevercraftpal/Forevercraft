# Friend Gift — Grant heart to receiver for the sender friend
# @s = recipient player
# temp.gift_sender_uuid3 = sender's UUID3 (set before calling this)
# Saves/restores #fr_self_uuid3 and #fr_gift_target to avoid clobbering sender context

# Backup sender-side scores
scoreboard players operation #fr_bak_self ec.temp = #fr_self_uuid3 ec.temp
scoreboard players operation #fr_bak_target ec.temp = #fr_gift_target ec.temp

# Set up receiver context: self = recipient, target = sender
execute store result score #fr_self_uuid3 ec.temp run data get entity @s UUID[3]
execute store result storage evercraft:friends temp.self_uuid3 int 1 run scoreboard players get #fr_self_uuid3 ec.temp
execute store result score #fr_gift_target ec.temp run data get storage evercraft:friends temp.gift_sender_uuid3
scoreboard players operation #fr_check_uuid3 ec.temp = #fr_gift_target ec.temp

# Load receiver's friend list and find sender entry, grant heart if daily not given
# Safe if sender was unfriended: find_friend_daily exhausts without calling heart/grant
function evercraft:friends/heart/load_friends_list with storage evercraft:friends temp
# Only search if receiver has friend data (skip if unfriended/empty list)
execute if data storage evercraft:friends temp.heart_list[0] run function evercraft:friends/gift/find_friend_daily

# Restore sender-side scores and storage
scoreboard players operation #fr_self_uuid3 ec.temp = #fr_bak_self ec.temp
scoreboard players operation #fr_gift_target ec.temp = #fr_bak_target ec.temp
# Restore temp.self_uuid3 in storage (clobbered by line 12, needed by sender heart grant)
execute store result storage evercraft:friends temp.self_uuid3 int 1 run scoreboard players get #fr_self_uuid3 ec.temp
