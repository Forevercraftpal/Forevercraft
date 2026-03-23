# Apply jump upgrade — runs as the tamed horse
# OPT: Single entity resolution for all operations (was 5 separate scans)

attribute @s jump_strength modifier add evercraft:jump_boost 0.2 add_value
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 0.3 0.5 0.3 0.1 20 force
execute at @s run particle minecraft:cloud ~ ~0.5 ~ 0.3 0.3 0.3 0.05 25 force
execute at @s run playsound minecraft:entity.player.levelup master @a[distance=..10] ~ ~ ~ 0.7 1.5
execute at @s run playsound minecraft:entity.horse.eat master @a[distance=..10] ~ ~ ~ 1.0 1.0
