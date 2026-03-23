# Resonance — Damage echo AoE at target
# @s = hit entity, position = hit entity

# Instant Damage I to all entities in 8-block radius (echo of the original hit)
effect give @e[type=!player,distance=..8] instant_damage 1 0 false
effect give @e[type=!player,distance=..8] glowing 4 0 false

# Particles — sonic/echo wave
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1
particle minecraft:enchanted_hit ~ ~1 ~ 8 2 8 0.1 40
particle minecraft:note ~ ~2 ~ 4 1 4 0.5 15

# Sound
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 0.8 1.5
