# Tamed Horse — Attack Nearby Hostile
# Runs as a tamed horse at its position. Kicks nearest hostile within 1 block.

execute unless entity @e[type=#evercraft:mobs/hostile_mobs,distance=..1,limit=1] run return 0

# Deal damage (base 4 — horses kick hard)
damage @e[type=#evercraft:mobs/hostile_mobs,distance=..1,limit=1,sort=nearest] 4 minecraft:mob_attack by @s

# Attack visuals
execute at @s run particle minecraft:crit ~ ~0.5 ~ 0.3 0.2 0.3 0.1 5
playsound minecraft:entity.horse.angry master @a[distance=..16] ~ ~ ~ 0.7 1.0
