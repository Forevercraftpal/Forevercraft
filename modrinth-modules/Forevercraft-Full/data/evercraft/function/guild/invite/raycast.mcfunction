# Guild Invite — Raycast step (recursive, up to 8 blocks = 16 steps of 0.5)
# Looks for non-inviter players at current position

# Check for player at this position (not the inviter)
execute as @a[distance=..1.5,tag=!ec.guild_inviter,limit=1,sort=nearest] run tag @s add ec.guild_inv_target
execute if entity @e[tag=ec.guild_inv_target,limit=1] run return 1

# Advance ray
scoreboard players add #guild_ray ec.temp 1
execute if score #guild_ray ec.temp matches ..16 positioned ^ ^ ^0.5 run function evercraft:guild/invite/raycast
