# Apply health upgrade — runs as the tamed horse
# OPT: Single entity resolution for all operations (was 6 separate scans)

attribute @s max_health modifier add evercraft:health_boost 4 add_value
effect give @s minecraft:instant_health 1 1 true
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 0.3 0.5 0.3 0.1 20 force
execute at @s run particle minecraft:heart ~ ~1.5 ~ 0.5 0.5 0.5 0.1 10 force
execute at @s run playsound minecraft:entity.player.levelup master @a[distance=..10] ~ ~ ~ 0.7 1.5
execute at @s run playsound minecraft:entity.horse.eat master @a[distance=..10] ~ ~ ~ 1.0 1.0
