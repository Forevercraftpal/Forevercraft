# Codex Friends — Return to list view
# @s = player

tag @s remove ec.fr_detail_view
scoreboard players set @s ec.fr_target 0

# Kill detail entities
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=ec.fr_gui_detail,distance=..5]

# Refresh list
function evercraft:codex/friends/refresh
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
