# Portal Dial — Read guidestone binding from offhand item
# Extracts gs_bound_id into #pd_remote_id for validate_gs_exists
execute store result score #pd_remote_id ec.gs_temp run data get entity @s equipment.offhand.components."minecraft:custom_data".gs_bound_id
