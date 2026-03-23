# Hoe of Honor — Till 3x3 area
# Converts tillable blocks in surrounding 8 positions to farmland
# Position is at the center farmland block

execute positioned ~-1 ~ ~-1 if predicate evercraft:mythical_tools/is_tillable run setblock ~ ~ ~ farmland
execute positioned ~ ~ ~-1 if predicate evercraft:mythical_tools/is_tillable run setblock ~ ~ ~ farmland
execute positioned ~1 ~ ~-1 if predicate evercraft:mythical_tools/is_tillable run setblock ~ ~ ~ farmland
execute positioned ~-1 ~ ~ if predicate evercraft:mythical_tools/is_tillable run setblock ~ ~ ~ farmland
execute positioned ~1 ~ ~ if predicate evercraft:mythical_tools/is_tillable run setblock ~ ~ ~ farmland
execute positioned ~-1 ~ ~1 if predicate evercraft:mythical_tools/is_tillable run setblock ~ ~ ~ farmland
execute positioned ~ ~ ~1 if predicate evercraft:mythical_tools/is_tillable run setblock ~ ~ ~ farmland
execute positioned ~1 ~ ~1 if predicate evercraft:mythical_tools/is_tillable run setblock ~ ~ ~ farmland

# Sound + particles
playsound minecraft:item.hoe.till master @s ~ ~ ~ 1 1.2
particle minecraft:happy_villager ~ ~0.5 ~ 1 0.3 1 0.05 15
