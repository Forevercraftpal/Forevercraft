# Winter Snow — Try to place/stack snow at current position
# Scans from y+4 down to y-4 to find surface. Places or stacks snow.
# Uses return to stop at first valid position found.

# --- Scan downward: place new snow on air-above-solid, or stack existing snow ---

# y+4
execute positioned ~ ~4 ~ if block ~ ~ ~ snow run return run function evercraft:seasons/effects/winter_snow_stack
execute positioned ~ ~4 ~ if block ~ ~ ~ air unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water unless block ~ ~-1 ~ lava run return run setblock ~ ~ ~ snow[layers=1]

# y+3
execute positioned ~ ~3 ~ if block ~ ~ ~ snow run return run function evercraft:seasons/effects/winter_snow_stack
execute positioned ~ ~3 ~ if block ~ ~ ~ air unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water unless block ~ ~-1 ~ lava run return run setblock ~ ~ ~ snow[layers=1]

# y+2
execute positioned ~ ~2 ~ if block ~ ~ ~ snow run return run function evercraft:seasons/effects/winter_snow_stack
execute positioned ~ ~2 ~ if block ~ ~ ~ air unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water unless block ~ ~-1 ~ lava run return run setblock ~ ~ ~ snow[layers=1]

# y+1
execute positioned ~ ~1 ~ if block ~ ~ ~ snow run return run function evercraft:seasons/effects/winter_snow_stack
execute positioned ~ ~1 ~ if block ~ ~ ~ air unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water unless block ~ ~-1 ~ lava run return run setblock ~ ~ ~ snow[layers=1]

# y+0
execute if block ~ ~ ~ snow run return run function evercraft:seasons/effects/winter_snow_stack
execute if block ~ ~ ~ air unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water unless block ~ ~-1 ~ lava run return run setblock ~ ~ ~ snow[layers=1]

# y-1
execute positioned ~ ~-1 ~ if block ~ ~ ~ snow run return run function evercraft:seasons/effects/winter_snow_stack
execute positioned ~ ~-1 ~ if block ~ ~ ~ air unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water unless block ~ ~-1 ~ lava run return run setblock ~ ~ ~ snow[layers=1]

# y-2
execute positioned ~ ~-2 ~ if block ~ ~ ~ snow run return run function evercraft:seasons/effects/winter_snow_stack
execute positioned ~ ~-2 ~ if block ~ ~ ~ air unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water unless block ~ ~-1 ~ lava run return run setblock ~ ~ ~ snow[layers=1]

# y-3
execute positioned ~ ~-3 ~ if block ~ ~ ~ snow run return run function evercraft:seasons/effects/winter_snow_stack
execute positioned ~ ~-3 ~ if block ~ ~ ~ air unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water unless block ~ ~-1 ~ lava run return run setblock ~ ~ ~ snow[layers=1]

# y-4
execute positioned ~ ~-4 ~ if block ~ ~ ~ snow run return run function evercraft:seasons/effects/winter_snow_stack
execute positioned ~ ~-4 ~ if block ~ ~ ~ air unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water unless block ~ ~-1 ~ lava run return run setblock ~ ~ ~ snow[layers=1]
