# Node Map — Update discovery counter
# Run as player, with storage evercraft:cf_temp {discovered:N}

$execute as @e[type=text_display,tag=CF.MapCounter,distance=..5,limit=1] run data modify entity @s text set value {"text":"Discovered: $(discovered)/15","color":"#8BC34A"}
