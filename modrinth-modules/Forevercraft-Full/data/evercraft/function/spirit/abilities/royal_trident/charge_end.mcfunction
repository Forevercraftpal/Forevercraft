# Depthsworn — Phalanx Charge End (Trident Slam)
# AoE damage at end of charge: 6-block radius (8 at spirit tier), 10 damage

# Normal: 6-block slam radius
execute as @e[type=!player,distance=..6] run damage @s 10 minecraft:player_attack by @p[sort=nearest,limit=1]
# Spirit tier: 8-block slam radius (extra reach)
execute if score @s ec.sp_tier matches 7 as @e[type=!player,distance=6..8] run damage @s 10 minecraft:player_attack by @p[sort=nearest,limit=1]

# Remove charge immunity
tag @s remove ec.sp_charging
effect clear @s resistance

# Slam VFX
particle explosion ~ ~0.5 ~ 1 0.3 1 0.1 8
particle dust{color:[0.9,0.9,1.0],scale:2.0} ~ ~0.5 ~ 3 0.5 3 0.05 30
playsound minecraft:entity.iron_golem.damage master @a[distance=..20] ~ ~ ~ 1.0 0.5
playsound minecraft:entity.generic.explode master @a[distance=..20] ~ ~ ~ 0.5 1.2

# Reset state
scoreboard players set @s ec.sp_state 0
