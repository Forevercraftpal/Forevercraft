# Tamable Ocelot — Attack Nearby Hostile
# Runs as a tamed ocelot at its position. Deals damage to nearest hostile within 4 blocks.

# Find nearest hostile within 4 blocks
execute unless entity @e[type=#evercraft:mobs/hostile_mobs,distance=..4,limit=1] run return 0

# Deal damage (base 3, Strength I brings it to ~6)
damage @e[type=#evercraft:mobs/hostile_mobs,distance=..4,limit=1,sort=nearest] 3 minecraft:mob_attack by @s

# Attack visuals
execute at @s run particle minecraft:crit ~ ~0.3 ~ 0.2 0.1 0.2 0.1 4
playsound minecraft:entity.player.attack.sweep master @a[distance=..16] ~ ~ ~ 0.6 1.4
