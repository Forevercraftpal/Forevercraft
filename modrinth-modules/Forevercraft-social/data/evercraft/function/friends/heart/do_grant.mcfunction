# Friend Heart — Macro: increment heart in storage and set daily flag
# Macro args: self_uuid3, friend_uuid3, heart_idx
# Finds the friend entry by iterating (since index may shift), increments hearts, sets daily_heart

# We need to find and update the friend entry matching friend_uuid3
# Copy current friends list, find the entry, update it
$data modify storage evercraft:friends temp.grant_list set from storage evercraft:friends "u$(self_uuid3)".friends
data modify storage evercraft:friends temp.grant_result set value []
$scoreboard players set #fr_grant_target ec.temp $(friend_uuid3)
scoreboard players set #fr_grant_done ec.temp 0
function evercraft:friends/heart/do_grant_loop

# Write back
$data modify storage evercraft:friends "u$(self_uuid3)".friends set from storage evercraft:friends temp.grant_result

# Store new hearts count for level check
data modify storage evercraft:friends temp.new_hearts set from storage evercraft:friends temp.granted_hearts
