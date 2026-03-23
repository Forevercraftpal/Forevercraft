# Archaeology structure crate — Phase 1: Mark suspicious block position
# Called when brush is used on suspicious sand/gravel
# Places a marker at the block so we know where to spawn the crate on excavation complete

advancement revoke @s only evercraft:trim/archaeology/sus_block_brushing

# Kill stale markers from abandoned brushing attempts (this player only, nearby)
execute as @e[type=minecraft:marker,tag=ec.sus_marker,distance=..10] run kill @s

# Raycast from eyes to find and mark the suspicious block
scoreboard players set @s cf.temp 0
execute anchored eyes positioned ^ ^ ^ anchored feet run function evercraft:structures/archaeology/raycast

# Preserve existing coast trim loot swap (full coast armor set bonus)
execute if entity @s[tag=full_set_coast] anchored eyes positioned ^ ^ ^ anchored feet run function evercraft:trim/full_set/coast/sus_loot/2
