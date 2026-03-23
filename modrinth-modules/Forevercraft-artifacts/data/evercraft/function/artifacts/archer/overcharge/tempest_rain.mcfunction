# Tempest — Arrow Rain
# Spawns 12 arrows raining down from the marker location

execute as @e[type=marker,tag=ec.ar_tempest,limit=1] at @s run function evercraft:artifacts/archer/overcharge/tempest_volley

# Schedule poison/wither effects after arrows land (10 ticks)
schedule function evercraft:artifacts/archer/overcharge/tempest_effects 10t
