# Winter Effects — 1s tick
# Snowfall particles in all biomes + icy blue ambient dust + snow accumulation

# Gentle snowfall (white_ash drifts down slowly)
execute as @a at @s run particle white_ash ~ ~6 ~ 12 4 12 0.02 8

# Icy blue ambient dust
execute as @a at @s run particle dust{color:[0.6,0.8,1.0],scale:0.5} ~ ~2 ~ 8 3 8 0.01 2

# === Snow Accumulation (every 5s) ===
scoreboard players add #winter_snow_cd ec.var 1
execute if score #winter_snow_cd ec.var matches 5.. run function evercraft:seasons/effects/winter_snow
execute if score #winter_snow_cd ec.var matches 5.. run scoreboard players set #winter_snow_cd ec.var 0
