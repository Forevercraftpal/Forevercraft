# Iron Trim — +0.5 Hearts Damage (+1 attack_damage) per piece

execute if predicate evercraft:trim_effects/trim/iron_trim/iron_head run attribute @s minecraft:attack_damage modifier add evercraft:iron_head_dmg 1 add_value
execute if predicate evercraft:trim_effects/trim/iron_trim/iron_chest run attribute @s minecraft:attack_damage modifier add evercraft:iron_chest_dmg 1 add_value
execute if predicate evercraft:trim_effects/trim/iron_trim/iron_legs run attribute @s minecraft:attack_damage modifier add evercraft:iron_legs_dmg 1 add_value
execute if predicate evercraft:trim_effects/trim/iron_trim/iron_feet run attribute @s minecraft:attack_damage modifier add evercraft:iron_feet_dmg 1 add_value

execute if predicate evercraft:trim_effects/trim/iron_trim/iron_head run tag @s add iron_head
execute if predicate evercraft:trim_effects/trim/iron_trim/iron_chest run tag @s add iron_chest
execute if predicate evercraft:trim_effects/trim/iron_trim/iron_legs run tag @s add iron_legs
execute if predicate evercraft:trim_effects/trim/iron_trim/iron_feet run tag @s add iron_feet

# Notification — only once
execute unless entity @s[tag=iron_notified] run tellraw @s [{"text":"[Iron Trim] ","color":"gray"},{"text":"+0.5 Hearts Damage","color":"white"},{"text":" per piece","color":"gray"},{"text":" (Full set = Slowness I penalty!)","color":"red"}]
tag @s add iron_notified
