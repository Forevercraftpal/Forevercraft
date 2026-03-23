# Copper Trim — -1 Heart (-2 Max Health) per piece

execute if predicate evercraft:trim_effects/trim/copper_trim/copper_head run attribute @s minecraft:max_health modifier add evercraft:copper_head_hp -2 add_value
execute if predicate evercraft:trim_effects/trim/copper_trim/copper_chest run attribute @s minecraft:max_health modifier add evercraft:copper_chest_hp -2 add_value
execute if predicate evercraft:trim_effects/trim/copper_trim/copper_legs run attribute @s minecraft:max_health modifier add evercraft:copper_legs_hp -2 add_value
execute if predicate evercraft:trim_effects/trim/copper_trim/copper_feet run attribute @s minecraft:max_health modifier add evercraft:copper_feet_hp -2 add_value

execute if predicate evercraft:trim_effects/trim/copper_trim/copper_head run tag @s add copper_head
execute if predicate evercraft:trim_effects/trim/copper_trim/copper_chest run tag @s add copper_chest
execute if predicate evercraft:trim_effects/trim/copper_trim/copper_legs run tag @s add copper_legs
execute if predicate evercraft:trim_effects/trim/copper_trim/copper_feet run tag @s add copper_feet

# Notification — only once
execute unless entity @s[tag=copper_notified] run tellraw @s [{"text":"[Copper Trim] ","color":"gold"},{"text":"-1 Heart","color":"red"},{"text":" per piece","color":"gray"},{"text":" (Full set = Haste I + Regen, but -5 Hearts total!)","color":"yellow"}]
tag @s add copper_notified
