# Quartz Trim — Remove effects

scoreboard players set @s te.quartz 0
tag @s remove te.quartz_wearing

execute unless predicate evercraft:trim_effects/trim/quartz_trim/quartz_head run tag @s remove quartz_head
execute unless predicate evercraft:trim_effects/trim/quartz_trim/quartz_chest run tag @s remove quartz_chest
execute unless predicate evercraft:trim_effects/trim/quartz_trim/quartz_legs run tag @s remove quartz_legs
execute unless predicate evercraft:trim_effects/trim/quartz_trim/quartz_feet run tag @s remove quartz_feet

tag @s remove quartz_notified
