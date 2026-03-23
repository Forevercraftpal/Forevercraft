# RPG Health Bar — Raycast Step
# OPT: Steps forward in 1.0-block increments (was 0.5), detection radius 1.5 still covers gaps
# Max range: 20 steps = 20 blocks (was 40 steps — halves recursive calls)

# Max range check
execute if score @s hb.ray matches 20.. run return 0

# Check for mob at current position (1.5 block radius to catch nearby mobs)
execute if entity @n[distance=..1.5,type=!#evercraft:health_bar_ignore,type=!player] run function evercraft:health_bar/raycast/found

# Stop if found
execute if entity @s[tag=hb.found] run return 0

# Stop if we hit a solid block (#minecraft:replaceable includes air, water, lava, plants, snow, fire, etc.)
execute unless block ~ ~ ~ #minecraft:replaceable run return 0

# Step forward
scoreboard players add @s hb.ray 1
execute positioned ^ ^ ^1.0 run function evercraft:health_bar/raycast/step
