# Diamond Trim — +2% Companion Ability Scaling per piece

execute if predicate evercraft:trim_effects/trim/diamond_trim/diamond_head run attribute @s minecraft:attack_damage modifier add evercraft:diamond_head_pet 0.02 add_multiplied_base
execute if predicate evercraft:trim_effects/trim/diamond_trim/diamond_chest run attribute @s minecraft:attack_damage modifier add evercraft:diamond_chest_pet 0.02 add_multiplied_base
execute if predicate evercraft:trim_effects/trim/diamond_trim/diamond_legs run attribute @s minecraft:attack_damage modifier add evercraft:diamond_legs_pet 0.02 add_multiplied_base
execute if predicate evercraft:trim_effects/trim/diamond_trim/diamond_feet run attribute @s minecraft:attack_damage modifier add evercraft:diamond_feet_pet 0.02 add_multiplied_base

execute if predicate evercraft:trim_effects/trim/diamond_trim/diamond_head run tag @s add diamond_head
execute if predicate evercraft:trim_effects/trim/diamond_trim/diamond_chest run tag @s add diamond_chest
execute if predicate evercraft:trim_effects/trim/diamond_trim/diamond_legs run tag @s add diamond_legs
execute if predicate evercraft:trim_effects/trim/diamond_trim/diamond_feet run tag @s add diamond_feet

# Notification — only once
execute unless entity @s[tag=diamond_notified] run tellraw @s [{"text":"[Diamond Trim] ","color":"aqua"},{"text":"+2% Companion Ability Scaling","color":"white"},{"text":" per piece","color":"gray"},{"text":" (Full set = Slow Falling + Night Vision!)","color":"gold"}]
tag @s add diamond_notified
