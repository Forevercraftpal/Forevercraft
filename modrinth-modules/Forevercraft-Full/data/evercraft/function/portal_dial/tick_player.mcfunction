# Portal Dial — Per-player tick (combines 3 @a scans into 1)

# OPT: Early exit if no cooldown AND no compass in either hand (skips for most players)
execute unless score @s ec.dial_cd matches 1.. unless items entity @s weapon.mainhand compass[custom_data~{portal_dial:true}] unless items entity @s weapon.offhand compass[custom_data~{portal_dial:true}] run return 0

# Decrement use cooldown
execute if score @s ec.dial_cd matches 1.. run scoreboard players remove @s ec.dial_cd 1

# Check mainhand: has lodestone_tracker AND portal_dial BUT NOT yet portal_dial_bound
execute if items entity @s weapon.mainhand compass[custom_data~{portal_dial:true}] unless data entity @s SelectedItem.components."minecraft:custom_data".portal_dial_bound if data entity @s SelectedItem.components."minecraft:lodestone_tracker".target run function evercraft:portal_dial/bind_mainhand

# Check offhand: has lodestone_tracker AND portal_dial BUT NOT yet portal_dial_bound
execute if items entity @s weapon.offhand compass[custom_data~{portal_dial:true}] unless data entity @s equipment.offhand.components."minecraft:custom_data".portal_dial_bound if data entity @s equipment.offhand.components."minecraft:lodestone_tracker".target run function evercraft:portal_dial/bind_offhand
