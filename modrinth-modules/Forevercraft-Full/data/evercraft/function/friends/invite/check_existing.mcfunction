# Friend Invite — Check if two players are already friends
# Macro args: self_uuid3, target_uuid3
# Sets #fr_already ec.temp to 1 if already friends, 0 otherwise

scoreboard players set #fr_already ec.temp 0
$execute if data storage evercraft:friends "u$(self_uuid3)" run function evercraft:friends/invite/check_existing_inner {self_uuid3:$(self_uuid3),target_uuid3:$(target_uuid3)}
