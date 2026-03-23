# Portal Dial — Recursive step: find registry entry by ID and extract name
execute unless data storage eden:temp pd_lookup[0] run return 0

execute store result score #pd_check_id ec.gs_temp run data get storage eden:temp pd_lookup[0].id
execute if score #pd_check_id ec.gs_temp = #pd_target_id ec.gs_temp run data modify storage eden:temp pd_bind.name set from storage eden:temp pd_lookup[0].name
execute if score #pd_check_id ec.gs_temp = #pd_target_id ec.gs_temp run return 0

data remove storage eden:temp pd_lookup[0]
function evercraft:portal_dial/lookup_gs_name_step
