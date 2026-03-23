# Guidestone — Update registry entry to primed
# Expects: #gs_prime_id on ec.gs_temp = the guidestone ID to prime
# Rebuilds the registry with the matching entry's primed field set to 1b

# Copy registry to temp, clear main
data modify storage evercraft:guidestone temp_registry set from storage evercraft:guidestone registry
data modify storage evercraft:guidestone registry set value []

# Process each entry recursively
function evercraft:guidestone/registry_prime_step
