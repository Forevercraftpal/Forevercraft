# Rift — Create void gravity well marker
# @s = hit entity, position = hit entity

# Initial AoE effects — Levitation + Slowness + Glowing in 6-block radius
effect give @e[type=!player,distance=..6] levitation 4 1 false
effect give @e[type=!player,distance=..6] slowness 4 3 false
effect give @e[type=!player,distance=..6] glowing 5 0 false

# Spawn rift marker for collapse tracking
summon marker ~ ~ ~ {Tags:["ht_rift","evercraft"]}

# Opening particles
particle minecraft:reverse_portal ~ ~1 ~ 3 2 3 0.1 60
particle minecraft:witch ~ ~1 ~ 6 2 6 0.05 30

# Sound
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1.5 0.5

# Schedule collapse burst in 4 seconds (80 ticks)
schedule function evercraft:artifacts/hunter/precision/rift_collapse 80t
