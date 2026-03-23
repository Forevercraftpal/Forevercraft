# Rift — Collapse burst at marker location
# @s = rift marker, position = marker

# Final burst — Wither II + Instant Damage I to everything in 6-block radius
effect give @e[type=!player,distance=..6] wither 6 1 false
effect give @e[type=!player,distance=..6] instant_damage 1 0 false

# Collapse particles
particle minecraft:explosion ~ ~1 ~ 3 2 3 0.5 10
particle minecraft:reverse_portal ~ ~1 ~ 6 3 6 0.2 80
particle minecraft:sculk_soul ~ ~1 ~ 4 2 4 0.1 30

# Sound
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 2 0.3
