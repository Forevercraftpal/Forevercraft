# Only kill if we are actually a horse (safety check)
execute if entity @s[type=horse] run particle minecraft:gust ~ ~0.5 ~ 0.5 0.5 0.5 0.1 20 force
execute if entity @s[type=horse] run playsound minecraft:entity.wind_charge.wind_burst player @a[distance=..16] ~ ~ ~ 1 1.5
execute if entity @s[type=horse] run kill @s
