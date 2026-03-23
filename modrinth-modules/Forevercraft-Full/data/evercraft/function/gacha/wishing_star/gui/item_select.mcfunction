# Wishing Star — Artifact Selection Handler (Macro)
# Macro args: art (artifact ID), tier (tier name)
# Run as @s = player
# First click: highlight artifact, second click on same: confirm + grant

# If this artifact is already highlighted (confirming), grant it
$execute if entity @e[type=text_display,tag=ec.Confirming,tag=Adv.ArtI_$(art),distance=..10,limit=1] run function evercraft:gacha/wishing_star/gui/grant {art:"$(art)",tier:"$(tier)"}
$execute if entity @e[type=text_display,tag=ec.Confirming,tag=Adv.ArtI_$(art),distance=..10,limit=1] run return 0

# Reset any previous highlight
function evercraft:gacha/wishing_star/gui/reset_highlight

# Save the artifact's display text before overwriting
$execute as @e[type=text_display,tag=Adv.ArtI_$(art),distance=..10,limit=1] run data modify storage evercraft:wishing_star selected_name set from entity @s text

# Highlight this artifact (change text to yellow, add Confirming tag)
$tag @e[type=text_display,tag=Adv.ArtI_$(art),distance=..10,limit=1] add ec.Confirming
$execute as @e[type=text_display,tag=Adv.ArtI_$(art),distance=..10,limit=1] run data modify entity @s text set value {text:"\u25b6 SELECTED \u25c0",color:"yellow",bold:true}

playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 1.5
