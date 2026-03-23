# Housing — Tag newly created snow golems in home zones
# Runs every 2s from housing/tick
# Snow golems built by a homeowner while in their zone get permanent hs.golem tag

# Find untagged snow golems near any hearthstone marker (within 64 blocks)
execute as @e[type=snow_golem,tag=!hs.checked] at @s if entity @e[type=marker,tag=HS.Marker,distance=..64] run function evercraft:housing/golem/try_tag

# Mark all snow golems as checked so we don't re-scan
tag @e[type=snow_golem,tag=!hs.checked] add hs.checked
