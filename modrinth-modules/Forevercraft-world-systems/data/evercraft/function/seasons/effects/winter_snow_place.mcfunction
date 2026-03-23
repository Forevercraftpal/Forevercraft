# Winter Snow — Place/stack snow at random positions near player
# Run as player, at player position
# 6 attempts at different offsets, each checks for valid placement

# Attempt 1
execute positioned ~7 ~0 ~3 run function evercraft:seasons/effects/winter_snow_try
execute positioned ~-4 ~0 ~8 run function evercraft:seasons/effects/winter_snow_try
execute positioned ~10 ~0 ~-6 run function evercraft:seasons/effects/winter_snow_try
execute positioned ~-9 ~0 ~-2 run function evercraft:seasons/effects/winter_snow_try
execute positioned ~2 ~0 ~-10 run function evercraft:seasons/effects/winter_snow_try
execute positioned ~-6 ~0 ~5 run function evercraft:seasons/effects/winter_snow_try

# Further out attempts (wider coverage)
execute positioned ~14 ~0 ~8 run function evercraft:seasons/effects/winter_snow_try
execute positioned ~-12 ~0 ~-11 run function evercraft:seasons/effects/winter_snow_try
