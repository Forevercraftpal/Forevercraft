# Friend Title — Macro: update title in friend list entry
# Macro args: self_uuid3, title_target_uuid3, new_title

# Copy list, find matching entry, update title, write back
$data modify storage evercraft:friends temp.title_list set from storage evercraft:friends "u$(self_uuid3)".friends
data modify storage evercraft:friends temp.title_result set value []
$scoreboard players set #fr_title_find ec.temp $(title_target_uuid3)
function evercraft:friends/title/set_loop
$data modify storage evercraft:friends "u$(self_uuid3)".friends set from storage evercraft:friends temp.title_result
