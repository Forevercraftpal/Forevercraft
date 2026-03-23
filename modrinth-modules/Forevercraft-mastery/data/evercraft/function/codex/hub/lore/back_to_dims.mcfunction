# Lore — Back to Dimension Picker
# Kills current page and returns to dimension picker
# Run as the player, at player, facing the anchor

scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill all current lore sub-content
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.LoreSubPick,distance=..5]
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.LoreSetList,distance=..5]

# Reset to page 1
scoreboard players set @s adv.gui_page 1

# Update title
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Lore Discovery \u2726",color:"yellow",bold:true}

# Respawn dimension picker
function evercraft:codex/hub/lore/spawn

# Play sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
