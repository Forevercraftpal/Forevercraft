# Guild — Tag newly created snow golems in guild zones
# Runs every 2s from housing/tick
# Snow golems built by a guild member while in their zone get permanent ec.gs_golem tag

# Find untagged snow golems near any guild stone marker (within 128 blocks)
# Skip golems already tagged as home defenders (no double damage)
execute as @e[type=snow_golem,tag=!gs.checked,tag=!hs.golem] at @s if entity @e[type=marker,tag=ec.guildstone,distance=..128] run function evercraft:guild/golem/try_tag

# Mark all snow golems as checked so we don't re-scan
tag @e[type=snow_golem,tag=!gs.checked] add gs.checked
