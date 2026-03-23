# Sneak Invite — Raycast Step
# Context: positioned along ray, @s = sneaking party leader
# Steps in 1-block increments, max 5 blocks

# Max range
execute if score #pty_ray ec.temp matches 5.. run return 0

# Check for non-party player at current position
execute if entity @n[distance=..1.5,type=player,scores={ec.party_id=0},gamemode=!spectator] run function evercraft:party/invite/sneak_process

# Stop if found
execute if entity @s[tag=ec.pty_inv_found] run return 0

# Stop at solid blocks
execute unless block ~ ~ ~ #minecraft:replaceable run return 0

# Step forward
scoreboard players add #pty_ray ec.temp 1
execute positioned ^ ^ ^1.0 run function evercraft:party/invite/sneak_raycast
