# Mythical Tools — Per-player raycast placement (single @a pass)
# OPT: Consolidates 3 separate @a at @s scans into 1
# Places target markers in front of player for break detection

execute if items entity @s weapon.mainhand *[custom_data~{artifact:"axe_of_honor"}] run function evercraft:artifacts/mythical_tools/axe_of_honor/start_raycast
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_pickaxe"}] run function evercraft:artifacts/mythical_tools/journey_pickaxe/start_raycast
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_shovel"}] run function evercraft:artifacts/mythical_tools/journey_shovel/start_raycast
