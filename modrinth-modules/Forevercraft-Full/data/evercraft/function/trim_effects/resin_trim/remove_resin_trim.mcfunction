# Resin Trim — Remove effects

scoreboard players set @s resin_trim 0
effect clear @s absorption

execute unless predicate evercraft:trim_effects/trim/resin_trim/resin_head run tag @s remove resin_head
execute unless predicate evercraft:trim_effects/trim/resin_trim/resin_chest run tag @s remove resin_chest
execute unless predicate evercraft:trim_effects/trim/resin_trim/resin_legs run tag @s remove resin_legs
execute unless predicate evercraft:trim_effects/trim/resin_trim/resin_feet run tag @s remove resin_feet

tag @s remove resin_notified
tag @s remove resin_wearing
