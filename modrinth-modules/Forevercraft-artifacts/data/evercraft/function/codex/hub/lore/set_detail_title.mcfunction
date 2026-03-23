# Lore — Set Detail Title (Macro)
# Macro args: fill_name, fill_rar_color

$data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 $(fill_name) \u2726",color:"$(fill_rar_color)",bold:true}
