# Journey Pickaxe — 3x3 Flat Plane Mining
# Mines a facing-aware 3x3 plane of blocks (8 surrounding + center already broken by raycast)
# @s = player, position = target block

# Mine center block first
function evercraft:artifacts/mythical_tools/journey_pickaxe/area_mine

# Looking down → horizontal plane (XZ, same Y)
execute if entity @s[x_rotation=45..90] run function evercraft:artifacts/mythical_tools/journey_pickaxe/plane_horizontal
execute if entity @s[x_rotation=45..90] run return 0

# Looking up → horizontal plane (XZ, same Y)
execute if entity @s[x_rotation=-90..-45] run function evercraft:artifacts/mythical_tools/journey_pickaxe/plane_horizontal
execute if entity @s[x_rotation=-90..-45] run return 0

# Facing North (negative Z) → XY plane
execute if entity @s[y_rotation=135..225] run function evercraft:artifacts/mythical_tools/journey_pickaxe/plane_ns
execute if entity @s[y_rotation=135..225] run return 0

# Facing South (positive Z) → XY plane
execute if entity @s[y_rotation=-45..45] run function evercraft:artifacts/mythical_tools/journey_pickaxe/plane_ns
execute if entity @s[y_rotation=-45..45] run return 0

# Facing West → ZY plane
execute if entity @s[y_rotation=45..135] run function evercraft:artifacts/mythical_tools/journey_pickaxe/plane_ew
execute if entity @s[y_rotation=45..135] run return 0

# Facing East → ZY plane
execute if entity @s[y_rotation=225..315] run function evercraft:artifacts/mythical_tools/journey_pickaxe/plane_ew

# Sound + particles
playsound minecraft:block.stone.break master @s ~ ~ ~ 1 0.8
playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 0.5 1.2
particle minecraft:sweep_attack ~ ~0.5 ~ 0.5 0.3 0.5 0 2
particle minecraft:enchant ~ ~0.5 ~ 0.5 0.5 0.5 1 10
