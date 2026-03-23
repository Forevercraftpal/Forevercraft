# Hoe of Honor — On Use (Till detected)
# Tills 3x3 area + auto-harvests mature crops

# Verify holding Hoe of Honor
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"hoe_of_honor"}] run return 0

# Raycast from eyes to find the freshly-tilled farmland block
scoreboard players set #hoe_ray ec.temp 0
execute at @s anchored eyes positioned ^ ^ ^0.5 run function evercraft:artifacts/mythical_tools/hoe_of_honor/raycast
