# Guild Menu — Set title text (macro)
# $(guild_name)
$execute as @e[type=text_display,tag=ec.guild_menu_title,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2726 ",color:"dark_green"},{text:"$(guild_name)",color:"green",bold:true},{text:" \u2726",color:"dark_green"}]

# Also update codex title when in codex mode
$execute if entity @s[tag=ec.guild_remote_menu] as @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2726 ",color:"dark_green"},{text:"$(guild_name)",color:"green",bold:true},{text:" \u2726",color:"dark_green"}]
