# Honey Ring — Slowness Aura (Rare)
# Applies Slowness I to all non-player entities within 5 blocks
# at @s required: satchel tick runs as @a without position context
execute at @s run effect give @e[type=#evercraft:hostile_mobs,distance=..5] slowness 2 0 true
