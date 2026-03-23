# Gold Trim — Remove effects

execute unless predicate evercraft:trim_effects/trim/gold_trim/gold_head run attribute @s minecraft:armor modifier remove evercraft:gold_head_armor
execute unless predicate evercraft:trim_effects/trim/gold_trim/gold_chest run attribute @s minecraft:armor modifier remove evercraft:gold_chest_armor
execute unless predicate evercraft:trim_effects/trim/gold_trim/gold_legs run attribute @s minecraft:armor modifier remove evercraft:gold_legs_armor
execute unless predicate evercraft:trim_effects/trim/gold_trim/gold_feet run attribute @s minecraft:armor modifier remove evercraft:gold_feet_armor

# Remove full set effects
effect clear @s fire_resistance
effect clear @s strength

execute unless predicate evercraft:trim_effects/trim/gold_trim/gold_head run tag @s remove gold_head
execute unless predicate evercraft:trim_effects/trim/gold_trim/gold_chest run tag @s remove gold_chest
execute unless predicate evercraft:trim_effects/trim/gold_trim/gold_legs run tag @s remove gold_legs
execute unless predicate evercraft:trim_effects/trim/gold_trim/gold_feet run tag @s remove gold_feet

tag @s remove gold_notified
