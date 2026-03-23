# Journal — Back to Overview
# Kills sub-page content and returns to overview
# Run as the player, at player, facing the anchor

scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill sub-page content
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.JnSubPage,distance=..5]

# Reset to overview page
scoreboard players set @s adv.gui_page 1

# Update title
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Travel Journal \u2726",color:"dark_aqua",bold:true}

# Respawn overview
function evercraft:codex/hub/journal/spawn_overview

# Play sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
