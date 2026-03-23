# Depthsworn — Phalanx Charge Step (runs per tick while charging)
# Moves player 2 blocks forward, damages entities in path

# Move forward 2 blocks in facing direction
tp @s ^ ^ ^2

# Damage all entities in path: 12 damage + Slowness II
execute as @e[type=!player,distance=..2] run damage @s 12 minecraft:player_attack by @p[sort=nearest,limit=1]
effect give @e[type=!player,distance=..2] slowness 3 1

# Knocked aside effect (small knockback via teleport isn't reliable — use effect)

# Trail VFX
particle dust{color:[0.8,0.8,0.9],scale:1.2} ~ ~0.5 ~ 0.5 0.2 0.5 0.05 8
playsound minecraft:entity.iron_golem.attack master @a[distance=..15] ~ ~ ~ 0.3 1.5

# Decrement steps
scoreboard players remove @s ec.sp_state 1

# If charge complete → slam
execute if score @s ec.sp_state matches ..0 run function evercraft:spirit/abilities/royal_trident/charge_end
