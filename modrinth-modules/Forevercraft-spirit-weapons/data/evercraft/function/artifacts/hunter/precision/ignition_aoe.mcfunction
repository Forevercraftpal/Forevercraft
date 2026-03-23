# Ignition — Fire AoE at target location
# @s = hit entity, position = hit entity

# Set fire to all entities in 4-block radius (6 seconds of fire)
execute as @e[type=!player,distance=..4] run data merge entity @s {Fire:120s}

# Particles
particle minecraft:flame ~ ~1 ~ 4 2 4 0.1 50
particle minecraft:lava ~ ~1 ~ 4 1 4 0.5 20

# Sound
playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1.5 0.8
