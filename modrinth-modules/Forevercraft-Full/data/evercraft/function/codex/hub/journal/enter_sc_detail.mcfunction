# Scrapbook — Enter Memory Detail Page (Page 16)
# Run as the player, at player, facing anchor

# Must have active pet to view memories
execute unless entity @s[tag=companion.activepet] run return run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.5

scoreboard players set @s adv.gui_page 16

scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill scrapbook overview content
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.JnScOv,distance=..5]

# Update title
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Memories \u2726",color:"#FF8C00",bold:true}

# Spawn 3-column memory detail
function evercraft:codex/hub/journal/spawn_sc_memories

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
