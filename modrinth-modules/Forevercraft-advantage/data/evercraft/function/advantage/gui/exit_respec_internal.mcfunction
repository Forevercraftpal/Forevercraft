# Exit respec mode — cleanup overlay, restore page 1
# Run as/at the player, facing the anchor

scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill all respec overlay entities via anchor
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..15] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.RespecOverlay,distance=..5]

# Remove respec mode tag
tag @s remove Adv.RespecMode

# Restore title via anchor
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..15] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Advantage Trees \u2726",color:"gold",bold:true}

# Respawn page 1 content (includes refresh)
function evercraft:advantage/gui/spawn_trees

# Return sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
