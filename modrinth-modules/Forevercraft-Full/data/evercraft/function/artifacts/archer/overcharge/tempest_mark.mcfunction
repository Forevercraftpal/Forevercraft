# Tempest — Mark impact location and schedule arrow rain
# @s = hit entity, position = hit entity location

# Summon marker at impact point
summon marker ~ ~10 ~ {Tags:["ec.ar_tempest"]}

# Schedule the rain (20 ticks = 1 second delay)
schedule function evercraft:artifacts/archer/overcharge/tempest_rain 20t
