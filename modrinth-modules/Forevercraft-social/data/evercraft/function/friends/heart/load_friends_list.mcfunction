# Friend Heart — Macro: load friend list into temp for iteration
# Macro args: self_uuid3
$data modify storage evercraft:friends temp.heart_list set from storage evercraft:friends "u$(self_uuid3)".friends
scoreboard players set #fr_heart_idx ec.temp 0
