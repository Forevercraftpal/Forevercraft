# Showcase — Reroll picker (run as player)

# Kill existing picker entities
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=ec.sc_picker_el,distance=..5]

# Re-run the full picker open (re-scans and re-randomizes)
function evercraft:codex/friends/showcase/open_picker

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
