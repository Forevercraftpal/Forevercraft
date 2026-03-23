# Friend Invite — Raycast to find target player
# @s = player using codex while sneaking, at @s position
# Based on duel raycast pattern — check 10 positions (0.5-5 blocks out)

tag @s add ec.fr_inviter

# Check 10 positions along line of sight (0.5 block steps, up to 5 blocks)
execute anchored eyes positioned ^ ^ ^0.5 as @a[distance=..2.5,tag=!ec.fr_inviter,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] run tag @s add ec.fr_ray_target
execute unless entity @a[tag=ec.fr_ray_target] anchored eyes positioned ^ ^ ^1 as @a[distance=..2.5,tag=!ec.fr_inviter,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] run tag @s add ec.fr_ray_target
execute unless entity @a[tag=ec.fr_ray_target] anchored eyes positioned ^ ^ ^1.5 as @a[distance=..2.5,tag=!ec.fr_inviter,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] run tag @s add ec.fr_ray_target
execute unless entity @a[tag=ec.fr_ray_target] anchored eyes positioned ^ ^ ^2 as @a[distance=..2.5,tag=!ec.fr_inviter,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] run tag @s add ec.fr_ray_target
execute unless entity @a[tag=ec.fr_ray_target] anchored eyes positioned ^ ^ ^2.5 as @a[distance=..2.5,tag=!ec.fr_inviter,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] run tag @s add ec.fr_ray_target
execute unless entity @a[tag=ec.fr_ray_target] anchored eyes positioned ^ ^ ^3 as @a[distance=..2.5,tag=!ec.fr_inviter,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] run tag @s add ec.fr_ray_target
execute unless entity @a[tag=ec.fr_ray_target] anchored eyes positioned ^ ^ ^3.5 as @a[distance=..2.5,tag=!ec.fr_inviter,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] run tag @s add ec.fr_ray_target
execute unless entity @a[tag=ec.fr_ray_target] anchored eyes positioned ^ ^ ^4 as @a[distance=..2.5,tag=!ec.fr_inviter,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] run tag @s add ec.fr_ray_target
execute unless entity @a[tag=ec.fr_ray_target] anchored eyes positioned ^ ^ ^4.5 as @a[distance=..2.5,tag=!ec.fr_inviter,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] run tag @s add ec.fr_ray_target
execute unless entity @a[tag=ec.fr_ray_target] anchored eyes positioned ^ ^ ^5 as @a[distance=..2.5,tag=!ec.fr_inviter,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] run tag @s add ec.fr_ray_target

# If target found, send invite
execute if entity @a[tag=ec.fr_ray_target] run function evercraft:friends/invite/send

# If no target found, show message
execute unless entity @a[tag=ec.fr_ray_target] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Look at a player and shift+right-click to send a friend request.",color:"gray"}]

# Cleanup tags
tag @s remove ec.fr_inviter
tag @a remove ec.fr_ray_target
