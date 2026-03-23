# Hoe of Honor - Harvest Area
# Harvests mature crops in a 3x3 area and replants them

# Center
execute if predicate evercraft:mythical_tools/is_mature_wheat run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_wheat
execute if predicate evercraft:mythical_tools/is_mature_carrot run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_carrot
execute if predicate evercraft:mythical_tools/is_mature_potato run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_potato
execute if predicate evercraft:mythical_tools/is_mature_beetroot run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_beetroot
execute if predicate evercraft:mythical_tools/is_mature_nether_wart run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_nether_wart

# 3x3 Area
execute positioned ~1 ~ ~ run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~-1 ~ ~ run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~ ~ ~1 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~ ~ ~-1 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~1 ~ ~1 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~1 ~ ~-1 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~-1 ~ ~1 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single
execute positioned ~-1 ~ ~-1 run function evercraft:artifacts/mythical_tools/hoe_of_honor/harvest_single

# Sound and particles
playsound minecraft:item.hoe.till master @s ~ ~ ~ 1 1.2
particle minecraft:happy_villager ~ ~0.5 ~ 1 0.3 1 0.05 10
