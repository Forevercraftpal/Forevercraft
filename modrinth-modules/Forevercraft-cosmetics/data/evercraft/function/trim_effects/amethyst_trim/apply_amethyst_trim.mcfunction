# Amethyst Trim — +0.25 Dream Rate (luck) per piece

execute if predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_head run attribute @s minecraft:luck modifier add evercraft:amethyst_head_luck 0.25 add_value
execute if predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_chest run attribute @s minecraft:luck modifier add evercraft:amethyst_chest_luck 0.25 add_value
execute if predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_legs run attribute @s minecraft:luck modifier add evercraft:amethyst_legs_luck 0.25 add_value
execute if predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_feet run attribute @s minecraft:luck modifier add evercraft:amethyst_feet_luck 0.25 add_value

execute if predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_head run tag @s add amethyst_head
execute if predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_chest run tag @s add amethyst_chest
execute if predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_legs run tag @s add amethyst_legs
execute if predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_feet run tag @s add amethyst_feet

# Notification — only once
execute unless entity @s[tag=amethyst_notified] run tellraw @s [{"text":"[Amethyst Trim] ","color":"light_purple"},{"text":"+0.25 Dream Rate","color":"white"},{"text":" per piece","color":"gray"},{"text":" (Full set = 15% Mining Speed!)","color":"gold"}]
tag @s add amethyst_notified
