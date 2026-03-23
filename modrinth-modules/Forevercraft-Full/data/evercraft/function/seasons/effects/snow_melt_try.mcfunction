# Snow Melt — Try to melt snow at this x/z, scanning y offsets
# Reduces layers by 1, removes if layers=1

# Scan y+4 to y-4 for snow
execute positioned ~ ~4 ~ if block ~ ~ ~ snow run return run function evercraft:seasons/effects/snow_melt_one
execute positioned ~ ~3 ~ if block ~ ~ ~ snow run return run function evercraft:seasons/effects/snow_melt_one
execute positioned ~ ~2 ~ if block ~ ~ ~ snow run return run function evercraft:seasons/effects/snow_melt_one
execute positioned ~ ~1 ~ if block ~ ~ ~ snow run return run function evercraft:seasons/effects/snow_melt_one
execute if block ~ ~ ~ snow run return run function evercraft:seasons/effects/snow_melt_one
execute positioned ~ ~-1 ~ if block ~ ~ ~ snow run return run function evercraft:seasons/effects/snow_melt_one
execute positioned ~ ~-2 ~ if block ~ ~ ~ snow run return run function evercraft:seasons/effects/snow_melt_one
execute positioned ~ ~-3 ~ if block ~ ~ ~ snow run return run function evercraft:seasons/effects/snow_melt_one
execute positioned ~ ~-4 ~ if block ~ ~ ~ snow run return run function evercraft:seasons/effects/snow_melt_one
