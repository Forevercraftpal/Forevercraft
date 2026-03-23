# Guild Warp — Skip entries to reach clicked index
# Uses #guild_warp_skip counter, stores result in warp.tp_target

execute if score #guild_warp_skip ec.temp matches ..0 run data modify storage evercraft:guild warp.tp_target set from storage evercraft:guild warp.tp_working[0]
execute if score #guild_warp_skip ec.temp matches ..0 run return 0

data remove storage evercraft:guild warp.tp_working[0]
scoreboard players remove #guild_warp_skip ec.temp 1
function evercraft:guild/gui/menu/warp/skip_to_entry
