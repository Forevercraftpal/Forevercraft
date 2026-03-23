# Marriage — Macro: clear married_to on both players
# Macro args: self_uuid3, spouse_uuid3
$data modify storage evercraft:friends "u$(self_uuid3)".married_to set value 0
$data modify storage evercraft:friends "u$(spouse_uuid3)".married_to set value 0
