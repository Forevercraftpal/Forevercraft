# Sneak Invite — Raycast Init
# Context: as sneaking party leader, at @s anchored eyes positioned ^ ^ ^0.5

scoreboard players set #pty_ray ec.temp 0
tag @s remove ec.pty_inv_found

function evercraft:party/invite/sneak_raycast

tag @s remove ec.pty_inv_found
