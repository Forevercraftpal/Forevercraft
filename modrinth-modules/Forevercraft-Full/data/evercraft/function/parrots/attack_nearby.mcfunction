# Tamed Parrot — Attack Nearby Hostile
# Runs as a tamed parrot at its position. Deals damage to nearest hostile within 2 blocks.

execute unless entity @e[type=#evercraft:mobs/hostile_mobs,distance=..2,limit=1] run return 0

# Deal damage (base 1 — parrots are small but feisty)
damage @e[type=#evercraft:mobs/hostile_mobs,distance=..2,limit=1,sort=nearest] 1 minecraft:mob_attack by @s

# Attack visuals
execute at @s run particle minecraft:crit ~ ~0.3 ~ 0.1 0.1 0.1 0.1 2
playsound minecraft:entity.parrot.hurt master @a[distance=..16] ~ ~ ~ 0.4 1.5
