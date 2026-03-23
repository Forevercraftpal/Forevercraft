# Dune Full Set — Biome-dependent speed and step height
# Consolidated from 5 separate @a scans into 1 function call (OPT)
# Run as @a[tag=full_set_dune] at @s

# Badlands biome check
execute if biome ~ ~ ~ #minecraft:is_badlands run effect give @s speed 1 4 false
execute if biome ~ ~ ~ #minecraft:is_badlands run attribute @s minecraft:step_height base set 3
execute if biome ~ ~ ~ #minecraft:is_badlands run return 0

# Desert biome check
execute if biome ~ ~ ~ minecraft:desert run effect give @s speed 1 4 false
execute if biome ~ ~ ~ minecraft:desert run attribute @s minecraft:step_height base set 3
execute if biome ~ ~ ~ minecraft:desert run return 0

# Not in desert/badlands — reset step height to default
attribute @s minecraft:step_height base set 0.6
