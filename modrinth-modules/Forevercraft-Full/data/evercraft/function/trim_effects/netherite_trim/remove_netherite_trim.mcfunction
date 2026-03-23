scoreboard players set @s netherite_trim 0

execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_head run scoreboard players add @s netherite_trim 1
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_chest run scoreboard players add @s netherite_trim 1
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_legs run scoreboard players add @s netherite_trim 1
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_feet run scoreboard players add @s netherite_trim 1

# Remove full set bonus if no longer full set
execute if score @s netherite_trim matches ..3 run attribute @s minecraft:safe_fall_distance modifier remove evercraft:netherite_full

# Remove luck modifiers
execute unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_head run attribute @s minecraft:luck modifier remove evercraft:netherite_head_luck
execute unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_chest run attribute @s minecraft:luck modifier remove evercraft:netherite_chest_luck
execute unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_legs run attribute @s minecraft:luck modifier remove evercraft:netherite_legs_luck
execute unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_feet run attribute @s minecraft:luck modifier remove evercraft:netherite_feet_luck

# Remove gravity modifiers (both normal and float)
execute unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_head run attribute @s minecraft:gravity modifier remove evercraft:netherite_head_grav
execute unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_chest run attribute @s minecraft:gravity modifier remove evercraft:netherite_chest_grav
execute unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_legs run attribute @s minecraft:gravity modifier remove evercraft:netherite_legs_grav
execute unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_feet run attribute @s minecraft:gravity modifier remove evercraft:netherite_feet_grav

attribute @s minecraft:gravity modifier remove evercraft:netherite_float_head
attribute @s minecraft:gravity modifier remove evercraft:netherite_float_chest
attribute @s minecraft:gravity modifier remove evercraft:netherite_float_legs
attribute @s minecraft:gravity modifier remove evercraft:netherite_float_feet

# Remove fall distance
execute unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_head run attribute @s minecraft:safe_fall_distance modifier remove evercraft:netherite_head_fall
execute unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_chest run attribute @s minecraft:safe_fall_distance modifier remove evercraft:netherite_chest_fall
execute unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_legs run attribute @s minecraft:safe_fall_distance modifier remove evercraft:netherite_legs_fall
execute unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_feet run attribute @s minecraft:safe_fall_distance modifier remove evercraft:netherite_feet_fall

# Remove jump strength
execute unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_head run attribute @s minecraft:jump_strength modifier remove evercraft:netherite_head_jump
execute unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_chest run attribute @s minecraft:jump_strength modifier remove evercraft:netherite_chest_jump
execute unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_legs run attribute @s minecraft:jump_strength modifier remove evercraft:netherite_legs_jump
execute unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_feet run attribute @s minecraft:jump_strength modifier remove evercraft:netherite_feet_jump

# Remove tags
execute unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_head run tag @s remove netherite_head
execute unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_chest run tag @s remove netherite_chest
execute unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_legs run tag @s remove netherite_legs
execute unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_feet run tag @s remove netherite_feet

tag @s remove netherite_floating
effect clear @s resistance

tag @s remove netherite_notified
