# Friend Gift — Macro: read gift_streak for target friend from sender's list
# Macro args: self_uuid3 (sender)
# #fr_gift_target ec.temp = target friend UUID3
# Output: #fr_gift_streak ec.temp = streak value (0 if not found or field missing)

scoreboard players set #fr_gift_streak ec.temp 0
$data modify storage evercraft:friends temp.rs_list set from storage evercraft:friends "u$(self_uuid3)".friends
function evercraft:friends/gift/read_streak_loop
