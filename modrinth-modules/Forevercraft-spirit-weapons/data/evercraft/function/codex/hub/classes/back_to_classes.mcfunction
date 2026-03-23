# Classes — Back to Class List
# Kills artifact list content and respawns the class list
# Run as the player, at player, facing the anchor

scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill artifact list content (page 2)
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.ClsPage2,distance=..5]

# Return to page 1
scoreboard players set @s adv.gui_page 1

# Respawn class list
function evercraft:codex/hub/classes/spawn

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
