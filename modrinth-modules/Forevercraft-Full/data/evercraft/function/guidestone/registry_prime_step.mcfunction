# Guidestone — Recursive registry prime step
# Iterates temp_registry, sets primed:1b on matching ID, re-appends all entries

# Check if temp_registry is empty
execute unless data storage evercraft:guidestone temp_registry[0] run return 0

# Copy first entry to check slot
data modify storage evercraft:guidestone check_entry set from storage evercraft:guidestone temp_registry[0]

# Compare IDs
execute store result score #check_id ec.gs_temp run data get storage evercraft:guidestone check_entry.id
execute if score #check_id ec.gs_temp = #gs_prime_id ec.gs_temp run data modify storage evercraft:guidestone check_entry.primed set value 1b

# Re-append (modified or not)
data modify storage evercraft:guidestone registry append from storage evercraft:guidestone check_entry

# Remove first entry from temp
data remove storage evercraft:guidestone temp_registry[0]

# Recurse
function evercraft:guidestone/registry_prime_step
