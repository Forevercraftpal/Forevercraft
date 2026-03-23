# Snow Melt — Gradually removes winter snow after season changes
# Called every 3s from the effects tick when NOT winter and melt is active
# Decrements snow layers near players, removes when at 1

execute as @a at @s run function evercraft:seasons/effects/snow_melt_area
