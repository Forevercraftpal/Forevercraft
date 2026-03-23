# Campfire Stories — Per-player campfire proximity check
# OPT: Consolidates 4 @a at @s scans into 1 per-player dispatch
# Checks standing on/near campfire or soul campfire at feet or one block below

execute if block ~ ~ ~ campfire run function evercraft:campfire_stories/try_gather
execute unless entity @s[tag=ec.cf_gathering] if block ~ ~ ~ soul_campfire run function evercraft:campfire_stories/try_gather
execute unless entity @s[tag=ec.cf_gathering] if block ~ ~-1 ~ campfire run function evercraft:campfire_stories/try_gather
execute unless entity @s[tag=ec.cf_gathering] if block ~ ~-1 ~ soul_campfire run function evercraft:campfire_stories/try_gather
