scoreboard players set @s netherite_trim 0

# Calculate how many netherite trimmed armor the player is wearing
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_head run scoreboard players add @s netherite_trim 1
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_chest run scoreboard players add @s netherite_trim 1
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_legs run scoreboard players add @s netherite_trim 1
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_feet run scoreboard players add @s netherite_trim 1

# Full set bonus — near infinite safe fall
execute if score @s netherite_trim matches 4 run attribute @s minecraft:safe_fall_distance modifier add evercraft:netherite_full 9999999999 add_value

# +0.5 Dream Rate (luck) per piece
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_head run attribute @s minecraft:luck modifier add evercraft:netherite_head_luck 0.5 add_value
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_chest run attribute @s minecraft:luck modifier add evercraft:netherite_chest_luck 0.5 add_value
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_legs run attribute @s minecraft:luck modifier add evercraft:netherite_legs_luck 0.5 add_value
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_feet run attribute @s minecraft:luck modifier add evercraft:netherite_feet_luck 0.5 add_value

# Gravity reduction (slow fall)
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_head run attribute @s minecraft:gravity modifier add evercraft:netherite_head_grav -0.017 add_value
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_chest run attribute @s minecraft:gravity modifier add evercraft:netherite_chest_grav -0.017 add_value
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_legs run attribute @s minecraft:gravity modifier add evercraft:netherite_legs_grav -0.017 add_value
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_feet run attribute @s minecraft:gravity modifier add evercraft:netherite_feet_grav -0.017 add_value

# Safe fall distance
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_head run attribute @s minecraft:safe_fall_distance modifier add evercraft:netherite_head_fall 3 add_value
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_chest run attribute @s minecraft:safe_fall_distance modifier add evercraft:netherite_chest_fall 3 add_value
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_legs run attribute @s minecraft:safe_fall_distance modifier add evercraft:netherite_legs_fall 3 add_value
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_feet run attribute @s minecraft:safe_fall_distance modifier add evercraft:netherite_feet_fall 3 add_value

# Jump strength
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_head run attribute @s minecraft:jump_strength modifier add evercraft:netherite_head_jump 0.1 add_value
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_chest run attribute @s minecraft:jump_strength modifier add evercraft:netherite_chest_jump 0.1 add_value
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_legs run attribute @s minecraft:jump_strength modifier add evercraft:netherite_legs_jump 0.1 add_value
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_feet run attribute @s minecraft:jump_strength modifier add evercraft:netherite_feet_jump 0.1 add_value

# Tag
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_head run tag @s add netherite_head
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_chest run tag @s add netherite_chest
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_legs run tag @s add netherite_legs
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_feet run tag @s add netherite_feet

# Notification
execute unless entity @s[tag=netherite_notified] if score @s netherite_trim matches 1..3 run tellraw @s [{"text":"[Netherite Trim] ","color":"dark_gray"},{"text":"+0.5 Dream Rate + Gravity Control","color":"white"},{"text":" per piece","color":"gray"},{"text":" (Full set to float!)","color":"gold"}]
execute unless entity @s[tag=netherite_notified] if score @s netherite_trim matches 4 run tellraw @s [{"text":"[Netherite Trim] ","color":"dark_gray"},{"text":"+0.5 Dream Rate + Gravity Control","color":"white"},{"text":" (Sneak to float up!)","color":"yellow"}]
tag @s add netherite_notified
