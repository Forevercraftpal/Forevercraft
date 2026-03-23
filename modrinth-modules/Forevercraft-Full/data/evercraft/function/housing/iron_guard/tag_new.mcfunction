# Housing — Tag newly built iron golems in home zones
# Runs from housing/tick when untagged iron golems exist
# Player-built golems near hearthstone get hs.iron_guard tag, auto-named, limited to 3

# Find untagged iron golems near any hearthstone marker (within 64 blocks)
execute as @e[type=iron_golem,tag=!hs.ig_checked] at @s if entity @e[type=marker,tag=HS.Marker,distance=..64] run function evercraft:housing/iron_guard/try_tag

# Mark all iron golems as checked so we don't re-scan
tag @e[type=iron_golem,tag=!hs.ig_checked] add hs.ig_checked
