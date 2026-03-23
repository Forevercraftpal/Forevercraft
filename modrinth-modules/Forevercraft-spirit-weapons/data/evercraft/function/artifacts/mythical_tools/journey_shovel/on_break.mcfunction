# Journey Shovel — Block Broken! Dig 3x3 plane
# Executed at broken block position (marker context)
tag @s add ec_shov_broken

# Looking down/up → horizontal plane
execute as @p[distance=..6,x_rotation=45..90] if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_shovel"}] run function evercraft:artifacts/mythical_tools/journey_shovel/plane_horizontal
execute as @p[distance=..6,x_rotation=45..90] if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_shovel"}] run return 0
execute as @p[distance=..6,x_rotation=-90..-45] if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_shovel"}] run function evercraft:artifacts/mythical_tools/journey_shovel/plane_horizontal
execute as @p[distance=..6,x_rotation=-90..-45] if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_shovel"}] run return 0

# North
execute as @p[distance=..6,y_rotation=135..225] if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_shovel"}] run function evercraft:artifacts/mythical_tools/journey_shovel/plane_ns
execute as @p[distance=..6,y_rotation=135..225] if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_shovel"}] run return 0

# South
execute as @p[distance=..6,y_rotation=-45..45] if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_shovel"}] run function evercraft:artifacts/mythical_tools/journey_shovel/plane_ns
execute as @p[distance=..6,y_rotation=-45..45] if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_shovel"}] run return 0

# West
execute as @p[distance=..6,y_rotation=45..135] if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_shovel"}] run function evercraft:artifacts/mythical_tools/journey_shovel/plane_ew
execute as @p[distance=..6,y_rotation=45..135] if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_shovel"}] run return 0

# East
execute as @p[distance=..6,y_rotation=225..315] if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_shovel"}] run function evercraft:artifacts/mythical_tools/journey_shovel/plane_ew

# Particles
particle minecraft:sweep_attack ~ ~0.5 ~ 0.5 0.3 0.5 0 2
particle minecraft:enchant ~ ~0.5 ~ 0.5 0.5 0.5 1 10
