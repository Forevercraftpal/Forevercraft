# Guidestone — Registry filter step (recursive)
# Pop first entry from temp_registry, check if it matches remove_id
# If not, append to registry. Then recurse.

# Check if temp_registry is empty
execute unless data storage evercraft:guidestone temp_registry[0] run return 0

# Copy first entry to check slot
data modify storage evercraft:guidestone check_entry set from storage evercraft:guidestone temp_registry[0]

# Compare the entry's id with remove_id
execute store result score #check_id ec.gs_temp run data get storage evercraft:guidestone check_entry.id
execute store result score #remove_id ec.gs_temp run data get storage evercraft:guidestone remove_id

# If IDs don't match, keep this entry
execute unless score #check_id ec.gs_temp = #remove_id ec.gs_temp run data modify storage evercraft:guidestone registry append from storage evercraft:guidestone check_entry

# Remove first entry from temp_registry
data remove storage evercraft:guidestone temp_registry[0]

# Recurse
function evercraft:guidestone/registry_filter_step
