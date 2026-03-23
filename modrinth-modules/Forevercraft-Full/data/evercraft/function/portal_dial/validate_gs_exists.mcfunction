# Portal Dial — Recursive: validate guidestone exists in registry by ID
# Reads #pd_remote_id from ec.gs_temp
# Sets #pd_found to 1 if found, and stores live data in eden:temp pd_remote
execute unless data storage eden:temp pd_lookup[0] run return 0

execute store result score #pd_check_id ec.gs_temp run data get storage eden:temp pd_lookup[0].id
execute if score #pd_check_id ec.gs_temp = #pd_remote_id ec.gs_temp run scoreboard players set #pd_found ec.gs_temp 1
execute if score #pd_check_id ec.gs_temp = #pd_remote_id ec.gs_temp run data modify storage eden:temp pd_remote.live_primed set from storage eden:temp pd_lookup[0].primed
execute if score #pd_check_id ec.gs_temp = #pd_remote_id ec.gs_temp run data modify storage eden:temp pd_remote.live_dim set from storage eden:temp pd_lookup[0].dim
execute if score #pd_check_id ec.gs_temp = #pd_remote_id ec.gs_temp run data modify storage eden:temp pd_remote.live_name set from storage eden:temp pd_lookup[0].name
execute if score #pd_check_id ec.gs_temp = #pd_remote_id ec.gs_temp run return 0

data remove storage eden:temp pd_lookup[0]
function evercraft:portal_dial/validate_gs_exists
