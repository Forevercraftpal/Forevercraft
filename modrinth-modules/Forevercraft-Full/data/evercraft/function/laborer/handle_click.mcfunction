# Handle player clicking on a laborer
# Runs as: player, at player position
# ec.lb_target already tagged by on_interact (matched via interaction entity proximity)

execute unless entity @e[tag=ec.lb_target,limit=1] run return 0

# Branch 1: Player holding a meal → feed
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ec_meal:true}}}}] run function evercraft:laborer/feed/try_feed
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ec_meal:true}}}}] run tag @e[tag=ec.lb_target] remove ec.lb_target
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ec_meal:true}}}}] run return 0

# Branch 2: Laborer in RETURNED state → collect loot
# Use a score flag since tag removal timing causes issues
scoreboard players set #lb_was_returned ec.lb_temp 0
execute as @e[tag=ec.lb_target,limit=1] if score @s ec.lb_state matches 3 run scoreboard players set #lb_was_returned ec.lb_temp 1
execute if score #lb_was_returned ec.lb_temp matches 1 as @e[tag=ec.lb_target,limit=1] at @s run function evercraft:laborer/expedition/collect
execute if score #lb_was_returned ec.lb_temp matches 1 run tag @e[tag=ec.lb_target] remove ec.lb_target
execute if score #lb_was_returned ec.lb_temp matches 1 run return 0

# Branch 3: Default → show info
execute as @e[tag=ec.lb_target,limit=1] run function evercraft:laborer/gui/show_info
tag @e[tag=ec.lb_target] remove ec.lb_target
