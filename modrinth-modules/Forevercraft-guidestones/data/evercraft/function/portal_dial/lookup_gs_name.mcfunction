# Portal Dial — Look up guidestone name from registry by ID
# Expects: #pd_target_id on ec.gs_temp (the guidestone ID to find)
# Sets: eden:temp pd_bind.name to the matching entry's name

data modify storage eden:temp pd_lookup set from storage evercraft:guidestone registry
function evercraft:portal_dial/lookup_gs_name_step
