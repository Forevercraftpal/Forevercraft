# Guild Warp — Reset any highlighted/confirming row back to original text
execute as @e[type=text_display,tag=ec.guild_page_el,tag=ec.Confirming,distance=..5] run data modify entity @s text set from storage evercraft:guild warp.saved_text
execute as @e[type=text_display,tag=ec.guild_page_el,tag=ec.Confirming,distance=..5] run tag @s remove ec.Confirming
