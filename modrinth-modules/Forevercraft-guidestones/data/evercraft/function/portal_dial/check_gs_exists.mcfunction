# Portal Dial — Check if bound guidestone still exists in registry
# Reads #pd_gs_check from ec.gs_temp (the guidestone ID)
# Sets #pd_found to 1 if found, 0 if not

scoreboard players set #pd_found ec.gs_temp 0
scoreboard players operation #pd_remote_id ec.gs_temp = #pd_gs_check ec.gs_temp
data modify storage eden:temp pd_lookup set from storage evercraft:guidestone registry
function evercraft:portal_dial/check_gs_exists_step
