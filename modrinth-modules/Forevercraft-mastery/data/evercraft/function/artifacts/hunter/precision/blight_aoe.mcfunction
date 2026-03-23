# Blight — Corruption AoE at target
# @s = hit entity, position = hit entity

# Wither III + Poison II to all entities in 5-block radius
effect give @e[type=!player,distance=..5] wither 6 2 false
effect give @e[type=!player,distance=..5] poison 6 1 false

# Particles
particle minecraft:witch ~ ~1 ~ 5 2 5 0.1 50
particle minecraft:sculk_soul ~ ~1 ~ 5 1 5 0.05 20

# Sound
playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1.5 0.5
