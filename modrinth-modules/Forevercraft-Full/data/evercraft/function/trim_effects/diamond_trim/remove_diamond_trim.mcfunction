# Diamond Trim — Remove effects

execute unless predicate evercraft:trim_effects/trim/diamond_trim/diamond_head run attribute @s minecraft:attack_damage modifier remove evercraft:diamond_head_pet
execute unless predicate evercraft:trim_effects/trim/diamond_trim/diamond_chest run attribute @s minecraft:attack_damage modifier remove evercraft:diamond_chest_pet
execute unless predicate evercraft:trim_effects/trim/diamond_trim/diamond_legs run attribute @s minecraft:attack_damage modifier remove evercraft:diamond_legs_pet
execute unless predicate evercraft:trim_effects/trim/diamond_trim/diamond_feet run attribute @s minecraft:attack_damage modifier remove evercraft:diamond_feet_pet

# Remove full set effects
effect clear @s slow_falling
effect clear @s night_vision

execute unless predicate evercraft:trim_effects/trim/diamond_trim/diamond_head run tag @s remove diamond_head
execute unless predicate evercraft:trim_effects/trim/diamond_trim/diamond_chest run tag @s remove diamond_chest
execute unless predicate evercraft:trim_effects/trim/diamond_trim/diamond_legs run tag @s remove diamond_legs
execute unless predicate evercraft:trim_effects/trim/diamond_trim/diamond_feet run tag @s remove diamond_feet

tag @s remove diamond_notified
