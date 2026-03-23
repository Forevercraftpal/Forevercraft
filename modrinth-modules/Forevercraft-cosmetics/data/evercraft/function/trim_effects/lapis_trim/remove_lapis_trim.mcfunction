# Lapis Trim — Remove effects

scoreboard players set @s lapis_trim 0

effect clear @s water_breathing

execute unless predicate evercraft:trim_effects/trim/lapis_trim/lapis_head run tag @s remove lapis_head
execute unless predicate evercraft:trim_effects/trim/lapis_trim/lapis_chest run tag @s remove lapis_chest
execute unless predicate evercraft:trim_effects/trim/lapis_trim/lapis_legs run tag @s remove lapis_legs
execute unless predicate evercraft:trim_effects/trim/lapis_trim/lapis_feet run tag @s remove lapis_feet

tag @s remove lapis_notified
tag @s remove lapis_wearing
