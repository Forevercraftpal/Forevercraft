# Friend System — Loop: evaluate gift streak for each friend entry
# Processes one entry at a time from temp.ds_list
# #fr_ds_self_uuid3 ec.temp = this player's UUID3
# temp.ds_self_uuid3 = this player's UUID3 (for macro)

execute unless data storage evercraft:friends temp.ds_list[0] run return 0

# Copy entry for modification
data modify storage evercraft:friends temp.ds_entry set from storage evercraft:friends temp.ds_list[0]

# Ensure fields exist (backwards compat with pre-existing friends)
execute unless data storage evercraft:friends temp.ds_entry.gift_streak run data modify storage evercraft:friends temp.ds_entry.gift_streak set value 0
execute unless data storage evercraft:friends temp.ds_entry.sent_gift_today run data modify storage evercraft:friends temp.ds_entry.sent_gift_today set value 0b

# Read this player's sent_gift_today for this friend
execute store result score #fr_ds_self_sent ec.temp run data get storage evercraft:friends temp.ds_entry.sent_gift_today

# Read friend's UUID3
execute store result score #fr_ds_friend_uuid3 ec.temp run data get storage evercraft:friends temp.ds_entry.uuid3
execute store result storage evercraft:friends temp.ds_friend_uuid3 int 1 run scoreboard players get #fr_ds_friend_uuid3 ec.temp

# Check if partner sent a gift to us (reads partner's friend list)
scoreboard players set #fr_ds_partner_sent ec.temp 0
function evercraft:friends/daily_reset_streak_check with storage evercraft:friends temp

# Evaluate: both sent = increment streak, otherwise reset
execute if score #fr_ds_self_sent ec.temp matches 1.. if score #fr_ds_partner_sent ec.temp matches 1.. store result score #fr_ds_streak ec.temp run data get storage evercraft:friends temp.ds_entry.gift_streak
execute if score #fr_ds_self_sent ec.temp matches 1.. if score #fr_ds_partner_sent ec.temp matches 1.. run scoreboard players add #fr_ds_streak ec.temp 1
execute if score #fr_ds_self_sent ec.temp matches 1.. if score #fr_ds_partner_sent ec.temp matches 1.. store result storage evercraft:friends temp.ds_entry.gift_streak int 1 run scoreboard players get #fr_ds_streak ec.temp

# Reset streak if not mutual
execute unless score #fr_ds_self_sent ec.temp matches 1.. run data modify storage evercraft:friends temp.ds_entry.gift_streak set value 0
execute if score #fr_ds_self_sent ec.temp matches 1.. unless score #fr_ds_partner_sent ec.temp matches 1.. run data modify storage evercraft:friends temp.ds_entry.gift_streak set value 0

# Check for streak milestones (only on increment, not reset)
execute if score #fr_ds_self_sent ec.temp matches 1.. if score #fr_ds_partner_sent ec.temp matches 1.. run function evercraft:friends/gift/check_streak_milestone

# Clear daily flags (daily reset)
data modify storage evercraft:friends temp.ds_entry.sent_gift_today set value 0b
data modify storage evercraft:friends temp.ds_entry.daily_heart set value 0b

# Append modified entry
data modify storage evercraft:friends temp.ds_result append from storage evercraft:friends temp.ds_entry

# Pop and recurse
data remove storage evercraft:friends temp.ds_list[0]
function evercraft:friends/daily_reset_streak_loop
