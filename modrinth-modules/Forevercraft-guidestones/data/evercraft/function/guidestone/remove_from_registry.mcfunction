# Guidestone — Remove entry from registry by ID
# Reads remove_id from storage, rebuilds registry without that entry

# Copy registry to temp_registry, clear the main one
data modify storage evercraft:guidestone temp_registry set from storage evercraft:guidestone registry
data modify storage evercraft:guidestone registry set value []

# Process each entry: if it doesn't match remove_id, re-add it
function evercraft:guidestone/registry_filter_step
