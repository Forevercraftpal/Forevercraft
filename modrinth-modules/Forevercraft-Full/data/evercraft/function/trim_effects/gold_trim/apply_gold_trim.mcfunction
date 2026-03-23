# Gold Trim — +0.5 Armor per piece

execute if predicate evercraft:trim_effects/trim/gold_trim/gold_head run attribute @s minecraft:armor modifier add evercraft:gold_head_armor 0.5 add_value
execute if predicate evercraft:trim_effects/trim/gold_trim/gold_chest run attribute @s minecraft:armor modifier add evercraft:gold_chest_armor 0.5 add_value
execute if predicate evercraft:trim_effects/trim/gold_trim/gold_legs run attribute @s minecraft:armor modifier add evercraft:gold_legs_armor 0.5 add_value
execute if predicate evercraft:trim_effects/trim/gold_trim/gold_feet run attribute @s minecraft:armor modifier add evercraft:gold_feet_armor 0.5 add_value

execute if predicate evercraft:trim_effects/trim/gold_trim/gold_head run tag @s add gold_head
execute if predicate evercraft:trim_effects/trim/gold_trim/gold_chest run tag @s add gold_chest
execute if predicate evercraft:trim_effects/trim/gold_trim/gold_legs run tag @s add gold_legs
execute if predicate evercraft:trim_effects/trim/gold_trim/gold_feet run tag @s add gold_feet

# Notification — only once
execute unless entity @s[tag=gold_notified] run tellraw @s [{"text":"[Gold Trim] ","color":"yellow"},{"text":"+0.5 Armor","color":"white"},{"text":" per piece","color":"gray"},{"text":" (Full set = Fire Protection + Strength in structures!)","color":"gold"}]
tag @s add gold_notified
