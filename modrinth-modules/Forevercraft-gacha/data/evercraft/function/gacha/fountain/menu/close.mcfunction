# Close the Fountain menu
# Runs as @s = player

# Kill all menu entities matching our session
execute as @e[tag=ec.FountainMenu,distance=..20] if score @s adv.gui_session = @p[tag=ec.InFountain] adv.gui_session run kill @s

# Restore fountain label and interaction
execute as @e[type=text_display,tag=ec.fountain_label,distance=..20] run data modify entity @s text set value {text:"\u2726 Fountain of Eternal Dreams \u2726",color:"#E0B0FF",bold:true}
execute as @e[type=interaction,tag=ec.fountain_click,distance=..20] run data modify entity @s height set value 1.0f

# Remove tags
tag @s remove ec.InFountain
tag @s remove ec.InExchange

playsound minecraft:block.wooden_button.click_on master @s ~ ~ ~ 0.5 1.0
