# Showcase — Close picker (run as player)

tag @s remove ec.sc_in_picker

# Kill picker entities
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=ec.sc_picker_el,distance=..5]

# Re-render slots
function evercraft:codex/friends/showcase/spawn_slots

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 0.9
