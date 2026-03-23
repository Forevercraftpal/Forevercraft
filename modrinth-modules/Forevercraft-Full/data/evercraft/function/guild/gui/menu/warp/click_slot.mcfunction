# Guild Warp — Click a destination slot (two-click confirmation)
# Macro arg: slot (0-5)
# @s = the interaction entity that was clicked

# Clear interaction data
data remove entity @s interaction

# Check if the corresponding text_display is already confirming (second click)
scoreboard players set #warp_conf ec.temp 0
$execute if entity @e[type=text_display,tag=ec.guild_warp_text$(slot),tag=ec.Confirming,distance=..5] run scoreboard players set #warp_conf ec.temp 1

# Second click — confirm teleport
$execute if score #warp_conf ec.temp matches 1 run function evercraft:guild/gui/menu/warp/confirm_slot {slot:$(slot)}
execute if score #warp_conf ec.temp matches 1 run return 0

# First click — highlight for confirmation
# Reset any previous highlight
function evercraft:guild/gui/menu/warp/reset_highlight

# Save original text
$data modify storage evercraft:guild warp.saved_text set from entity @e[type=text_display,tag=ec.guild_warp_text$(slot),distance=..5,limit=1] text

# Change text to yellow confirmation
$data modify entity @e[type=text_display,tag=ec.guild_warp_text$(slot),distance=..5,limit=1] text set value {text:"▶ Click again to warp ◀",color:"yellow",bold:true}

# Add confirming tag
$tag @e[type=text_display,tag=ec.guild_warp_text$(slot),distance=..5,limit=1] add ec.Confirming

# Play pling sound
playsound minecraft:block.note_block.pling master @a[distance=..5] ~ ~ ~ 0.3 1.5
