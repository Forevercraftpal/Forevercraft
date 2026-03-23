# Marriage — Macro: check if target is a best friend (90+ hearts)
# Macro args: self_uuid3, marry_target_uuid3

scoreboard players set #fr_is_best ec.temp 0
$data modify storage evercraft:friends temp.marry_check_list set from storage evercraft:friends "u$(self_uuid3)".friends
$scoreboard players set #fr_marry_check_target ec.temp $(marry_target_uuid3)
function evercraft:friends/marriage/check_best_loop
