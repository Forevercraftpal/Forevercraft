# Friend Buff — Macro: read married_to from storage
# Macro args: self_uuid3
$execute store result score #fr_married_to ec.temp run data get storage evercraft:friends "u$(self_uuid3)".married_to
