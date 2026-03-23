# Copper Trim — Remove effects

execute unless predicate evercraft:trim_effects/trim/copper_trim/copper_head run attribute @s minecraft:max_health modifier remove evercraft:copper_head_hp
execute unless predicate evercraft:trim_effects/trim/copper_trim/copper_chest run attribute @s minecraft:max_health modifier remove evercraft:copper_chest_hp
execute unless predicate evercraft:trim_effects/trim/copper_trim/copper_legs run attribute @s minecraft:max_health modifier remove evercraft:copper_legs_hp
execute unless predicate evercraft:trim_effects/trim/copper_trim/copper_feet run attribute @s minecraft:max_health modifier remove evercraft:copper_feet_hp

# Remove full set bonus penalty and effects
attribute @s minecraft:max_health modifier remove evercraft:copper_full_hp
effect clear @s haste
effect clear @s regeneration

execute unless predicate evercraft:trim_effects/trim/copper_trim/copper_head run tag @s remove copper_head
execute unless predicate evercraft:trim_effects/trim/copper_trim/copper_chest run tag @s remove copper_chest
execute unless predicate evercraft:trim_effects/trim/copper_trim/copper_legs run tag @s remove copper_legs
execute unless predicate evercraft:trim_effects/trim/copper_trim/copper_feet run tag @s remove copper_feet

tag @s remove copper_notified
