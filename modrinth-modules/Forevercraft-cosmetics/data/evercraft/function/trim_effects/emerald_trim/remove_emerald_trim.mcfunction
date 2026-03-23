# Emerald Trim — Remove effects

scoreboard players set @s te.dodge 0

# Remove speed effect
effect clear @s speed

execute unless predicate evercraft:trim_effects/trim/emerald_trim/emerald_head run tag @s remove emerald_head
execute unless predicate evercraft:trim_effects/trim/emerald_trim/emerald_chest run tag @s remove emerald_chest
execute unless predicate evercraft:trim_effects/trim/emerald_trim/emerald_legs run tag @s remove emerald_legs
execute unless predicate evercraft:trim_effects/trim/emerald_trim/emerald_feet run tag @s remove emerald_feet

tag @s remove emerald_notified
