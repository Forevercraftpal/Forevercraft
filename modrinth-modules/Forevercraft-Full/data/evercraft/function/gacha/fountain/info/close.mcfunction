# Close the info browser
# Runs as @s = player

# Kill all info entities
execute as @e[tag=ec.GachaInfoFrame,distance=..5] run kill @s
execute as @e[tag=ec.GachaInfoSlot,distance=..5] run kill @s
execute as @e[tag=ec.GachaInfoAnchor,distance=..5] run kill @s

# Restore fountain label and interaction
execute as @e[type=text_display,tag=ec.fountain_label,distance=..20] run data modify entity @s text set value {text:"\u2726 Fountain of Eternal Dreams \u2726",color:"#E0B0FF",bold:true}
execute as @e[type=interaction,tag=ec.fountain_click,distance=..20] run data modify entity @s height set value 1.0f

# Remove tag
tag @s remove ec.InGachaInfo

playsound minecraft:block.wooden_button.click_on master @s ~ ~ ~ 0.5 1.0
