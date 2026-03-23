# Skip entries in tp_working to reach the target index
# Uses #gs_skip counter, stores result in tp_target

execute if score #gs_skip ec.gs_temp matches ..0 run data modify storage evercraft:guidestone tp_target set from storage evercraft:guidestone tp_working[0]
execute if score #gs_skip ec.gs_temp matches ..0 run return 0

data remove storage evercraft:guidestone tp_working[0]
scoreboard players remove #gs_skip ec.gs_temp 1
function evercraft:guidestone/menu/skip_to_entry
