# Redstone Trim — Remove effects

scoreboard players set @s te.redstone 0
tag @s remove te.redstone_wearing

execute unless predicate evercraft:trim_effects/trim/redstone_trim/redstone_head run tag @s remove redstone_head
execute unless predicate evercraft:trim_effects/trim/redstone_trim/redstone_chest run tag @s remove redstone_chest
execute unless predicate evercraft:trim_effects/trim/redstone_trim/redstone_legs run tag @s remove redstone_legs
execute unless predicate evercraft:trim_effects/trim/redstone_trim/redstone_feet run tag @s remove redstone_feet

tag @s remove redstone_notified
