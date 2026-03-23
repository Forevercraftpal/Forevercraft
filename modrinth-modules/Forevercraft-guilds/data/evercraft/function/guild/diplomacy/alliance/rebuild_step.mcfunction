# Guild Diplomacy — Rebuild alliances list, skipping target
# Recursive: pops first entry from temp.ally_list, re-adds if not target
# Run as: guild marker entity

# Base case: no more entries
execute unless data storage evercraft:guild temp.ally_list[0] run return 0

# Copy first entry to temp.current
data modify storage evercraft:guild temp.current set from storage evercraft:guild temp.ally_list[0]

# Check if this entry matches the target — if not, re-append to marker
execute store result score #gd_ally_id ec.temp run data get storage evercraft:guild temp.current.id
execute store result score #gd_remove_id ec.temp run data get storage evercraft:guild temp.target_id
execute unless score #gd_ally_id ec.temp = #gd_remove_id ec.temp run data modify entity @s data.alliances append from storage evercraft:guild temp.current

# Remove first entry from list
data remove storage evercraft:guild temp.ally_list[0]

# Recurse
function evercraft:guild/diplomacy/alliance/rebuild_step
