# Scrapbook — Back to Scrapbook Overview
# Run as the player, at player, facing anchor

scoreboard players set @s adv.gui_page 15

scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill detail content
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.JnScDetail,distance=..5]

# Restore scrapbook title
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Pet Scrapbook \u2726",color:"#FF8C00",bold:true}

# Respawn scrapbook overview
function evercraft:codex/hub/journal/spawn_scrapbook

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
