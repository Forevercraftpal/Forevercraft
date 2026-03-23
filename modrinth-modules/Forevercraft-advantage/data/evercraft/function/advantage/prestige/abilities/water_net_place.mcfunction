# Water Net — placed barrel detected (via placed_block advancement)
# Run as the player who placed the barrel
# Revoke advancement so it can re-trigger on next placement
advancement revoke @s only evercraft:advantage/water_net_place

# Guard: prevent double-activation from raycast hitting multiple barrels
tag @s add WaterNet.placing

# Use a short raycast from eyes to find the barrel block just placed
# align xyz snaps to block corner so entities spawn at correct grid position
execute at @s anchored eyes positioned ^ ^ ^1 if entity @s[tag=WaterNet.placing] if block ~ ~ ~ minecraft:barrel unless entity @e[type=marker,tag=WaterNet,distance=..0.5] align xyz run function evercraft:advantage/prestige/abilities/water_net_activate
execute at @s anchored eyes positioned ^ ^ ^2 if entity @s[tag=WaterNet.placing] if block ~ ~ ~ minecraft:barrel unless entity @e[type=marker,tag=WaterNet,distance=..0.5] align xyz run function evercraft:advantage/prestige/abilities/water_net_activate
execute at @s anchored eyes positioned ^ ^ ^3 if entity @s[tag=WaterNet.placing] if block ~ ~ ~ minecraft:barrel unless entity @e[type=marker,tag=WaterNet,distance=..0.5] align xyz run function evercraft:advantage/prestige/abilities/water_net_activate
execute at @s anchored eyes positioned ^ ^ ^4 if entity @s[tag=WaterNet.placing] if block ~ ~ ~ minecraft:barrel unless entity @e[type=marker,tag=WaterNet,distance=..0.5] align xyz run function evercraft:advantage/prestige/abilities/water_net_activate
execute at @s anchored eyes positioned ^ ^ ^5 if entity @s[tag=WaterNet.placing] if block ~ ~ ~ minecraft:barrel unless entity @e[type=marker,tag=WaterNet,distance=..0.5] align xyz run function evercraft:advantage/prestige/abilities/water_net_activate

tag @s remove WaterNet.placing
