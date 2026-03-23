# Iron Trim — Remove effects

execute unless predicate evercraft:trim_effects/trim/iron_trim/iron_head run attribute @s minecraft:attack_damage modifier remove evercraft:iron_head_dmg
execute unless predicate evercraft:trim_effects/trim/iron_trim/iron_chest run attribute @s minecraft:attack_damage modifier remove evercraft:iron_chest_dmg
execute unless predicate evercraft:trim_effects/trim/iron_trim/iron_legs run attribute @s minecraft:attack_damage modifier remove evercraft:iron_legs_dmg
execute unless predicate evercraft:trim_effects/trim/iron_trim/iron_feet run attribute @s minecraft:attack_damage modifier remove evercraft:iron_feet_dmg

# Remove full set penalty
effect clear @s slowness

execute unless predicate evercraft:trim_effects/trim/iron_trim/iron_head run tag @s remove iron_head
execute unless predicate evercraft:trim_effects/trim/iron_trim/iron_chest run tag @s remove iron_chest
execute unless predicate evercraft:trim_effects/trim/iron_trim/iron_legs run tag @s remove iron_legs
execute unless predicate evercraft:trim_effects/trim/iron_trim/iron_feet run tag @s remove iron_feet

tag @s remove iron_notified
