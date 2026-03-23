# Tamable Fox — Attack Nearby Hostile
# Runs as a tamed fox at its position. Deals damage to nearest hostile within 3 blocks.

execute unless entity @e[type=#evercraft:mobs/hostile_mobs,distance=..3,limit=1] run return 0

# Deal damage (base 2 — foxes are quick but light hitters)
damage @e[type=#evercraft:mobs/hostile_mobs,distance=..3,limit=1,sort=nearest] 2 minecraft:mob_attack by @s

# Attack visuals
execute at @s run particle minecraft:crit ~ ~0.3 ~ 0.2 0.1 0.2 0.1 3
playsound minecraft:entity.fox.bite master @a[distance=..16] ~ ~ ~ 0.7 1.2
