# Showcase — Process slot click (run as player)

# Store which slot was clicked
scoreboard players operation @s ec.sc_slot = #sc_clicked_slot ec.temp

# Tag player as in picker mode
tag @s add ec.sc_in_picker

# Kill all showcase GUI elements (picker takes over full area)
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=ec.sc_gui_el,distance=..5]

# Open the picker
function evercraft:codex/friends/showcase/open_picker

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
