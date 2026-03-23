# Prestige Gathering P3: Crop Vein Mine — harvest mature crops in 5x5 area
# Called from harvest crate process functions when P3 is active
# Reuses Hoe of Honor's harvest_single (predicate check + loot spawn + replant)
# Scans 5 rows (Z from -2 to +2), 5 columns (X from -2 to +2) at player feet level

# Row Z-2
execute positioned ~-2 ~ ~-2 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~-1 ~ ~-2 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~ ~ ~-2 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~1 ~ ~-2 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~2 ~ ~-2 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single

# Row Z-1
execute positioned ~-2 ~ ~-1 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~-1 ~ ~-1 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~ ~ ~-1 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~1 ~ ~-1 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~2 ~ ~-1 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single

# Row Z0
execute positioned ~-2 ~ ~ run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~-1 ~ ~ run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
# Skip center (player already harvested it)
execute positioned ~1 ~ ~ run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~2 ~ ~ run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single

# Row Z+1
execute positioned ~-2 ~ ~1 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~-1 ~ ~1 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~ ~ ~1 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~1 ~ ~1 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~2 ~ ~1 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single

# Row Z+2
execute positioned ~-2 ~ ~2 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~-1 ~ ~2 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~ ~ ~2 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~1 ~ ~2 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~2 ~ ~2 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single

# Feedback
playsound minecraft:item.hoe.till master @s ~ ~ ~ 0.8 1.0
particle minecraft:happy_villager ~ ~0.5 ~ 2 0.3 2 0.05 15
title @s actionbar [{text:"Harvest Lord!",color:"green"}]
