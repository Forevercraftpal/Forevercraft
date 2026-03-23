# Snow Melt — Remove/reduce snow in area around player
# Run as player, at player position
# Picks random positions and melts one layer of snow at each

# 6 random-ish positions per player per cycle
execute positioned ~5 ~0 ~3 run function evercraft:seasons/effects/snow_melt_try
execute positioned ~-8 ~0 ~6 run function evercraft:seasons/effects/snow_melt_try
execute positioned ~11 ~0 ~-4 run function evercraft:seasons/effects/snow_melt_try
execute positioned ~-3 ~0 ~-9 run function evercraft:seasons/effects/snow_melt_try
execute positioned ~7 ~0 ~-7 run function evercraft:seasons/effects/snow_melt_try
execute positioned ~-10 ~0 ~2 run function evercraft:seasons/effects/snow_melt_try
execute positioned ~13 ~0 ~10 run function evercraft:seasons/effects/snow_melt_try
execute positioned ~-6 ~0 ~-12 run function evercraft:seasons/effects/snow_melt_try
