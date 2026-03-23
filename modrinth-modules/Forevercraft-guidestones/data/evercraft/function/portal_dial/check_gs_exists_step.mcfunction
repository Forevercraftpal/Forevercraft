# Portal Dial — Recursive: check if guidestone ID exists in registry
execute unless data storage eden:temp pd_lookup[0] run return 0

execute store result score #pd_check_id ec.gs_temp run data get storage eden:temp pd_lookup[0].id
execute if score #pd_check_id ec.gs_temp = #pd_remote_id ec.gs_temp run scoreboard players set #pd_found ec.gs_temp 1
execute if score #pd_check_id ec.gs_temp = #pd_remote_id ec.gs_temp run return 0

data remove storage eden:temp pd_lookup[0]
function evercraft:portal_dial/check_gs_exists_step
