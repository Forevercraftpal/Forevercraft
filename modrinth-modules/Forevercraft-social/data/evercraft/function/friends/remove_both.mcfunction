# Friend System — Macro: remove friend entries from both players' lists
# Macro args: self_uuid3, target_uuid3

# Copy self's friend list to temp, filter out target, write back
$data modify storage evercraft:friends temp.filter_list set from storage evercraft:friends "u$(self_uuid3)".friends
data modify storage evercraft:friends temp.filter_result set value []
$scoreboard players set #fr_filter_uuid3 ec.temp $(target_uuid3)
function evercraft:friends/filter_remove_loop
$data modify storage evercraft:friends "u$(self_uuid3)".friends set from storage evercraft:friends temp.filter_result

# Copy target's friend list to temp, filter out self, write back
$data modify storage evercraft:friends temp.filter_list set from storage evercraft:friends "u$(target_uuid3)".friends
data modify storage evercraft:friends temp.filter_result set value []
$scoreboard players set #fr_filter_uuid3 ec.temp $(self_uuid3)
function evercraft:friends/filter_remove_loop
$data modify storage evercraft:friends "u$(target_uuid3)".friends set from storage evercraft:friends temp.filter_result
