# Bone Ring — Weakness Aura (Rare)
# Applies Weakness I to all non-player entities within 5 blocks
# at @s required: satchel tick runs as @a without position context
execute at @s run effect give @e[type=#evercraft:hostile_mobs,distance=..5] weakness 2 0 true
