# Amethyst Trim — Remove effects

execute unless predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_head run attribute @s minecraft:luck modifier remove evercraft:amethyst_head_luck
execute unless predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_chest run attribute @s minecraft:luck modifier remove evercraft:amethyst_chest_luck
execute unless predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_legs run attribute @s minecraft:luck modifier remove evercraft:amethyst_legs_luck
execute unless predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_feet run attribute @s minecraft:luck modifier remove evercraft:amethyst_feet_luck

# Remove full set bonus
attribute @s minecraft:block_break_speed modifier remove evercraft:amethyst_full_speed

execute unless predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_head run tag @s remove amethyst_head
execute unless predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_chest run tag @s remove amethyst_chest
execute unless predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_legs run tag @s remove amethyst_legs
execute unless predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_feet run tag @s remove amethyst_feet

tag @s remove amethyst_notified
