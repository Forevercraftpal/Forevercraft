# Guild — Tag newly built iron golems in guild zones
# Runs from housing/tick when untagged iron golems exist
# Player-built golems near guild stone get gs.iron_guard tag, auto-named, limited to 8

# Find untagged iron golems near any guildstone marker (within 128 blocks)
# Skip golems already tagged as home guards (no double tagging)
execute as @e[type=iron_golem,tag=!gs.ig_checked,tag=!hs.iron_guard] at @s if entity @e[type=marker,tag=ec.guildstone,distance=..128] run function evercraft:guild/iron_guard/try_tag

# Mark all iron golems as checked so we don't re-scan
tag @e[type=iron_golem,tag=!gs.ig_checked] add gs.ig_checked
