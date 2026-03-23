# Axe of Honor — Log Broken! Start timber felling
# Executed at broken log position (marker context)
tag @s add ec_axe_broken

# Find the nearest player holding the Axe of Honor and run timber_start
# Using 'as @p' keeps position at the marker (broken log) while giving player context for mainhand
execute as @p[distance=..6] if items entity @s weapon.mainhand *[custom_data~{artifact:"axe_of_honor"}] run function evercraft:artifacts/mythical_tools/axe_of_honor/timber_start

# Particles
particle minecraft:sweep_attack ~ ~0.5 ~ 0.5 0.3 0.5 0 2
particle minecraft:enchant ~ ~0.5 ~ 0.5 0.5 0.5 1 10
