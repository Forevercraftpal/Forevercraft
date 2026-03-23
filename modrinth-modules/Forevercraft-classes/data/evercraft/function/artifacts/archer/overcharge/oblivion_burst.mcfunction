# Oblivion — Collapse Burst
# @s = marker, position = void zone center

# Final damage burst to all entities in 7-block radius
effect give @e[type=!player,distance=..7] instant_damage 1 1 false

# Collapse particles
particle explosion ~ ~1 ~ 5 2 5 0.1 20
particle sonic_boom ~ ~1 ~ 0 0 0 0 1
particle dragon_breath ~ ~1 ~ 7 2 7 0.05 100
particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 3 1 3 0.1 5

# Sound
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.5
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1.5 1.0
