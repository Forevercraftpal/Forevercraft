# Lore — Set Detail Subtitle (Macro)
# Shows rarity and piece count
# Macro args: fill_rar_label, fill_rar_color

$data modify entity @e[type=text_display,tag=Adv.LoreDetail,distance=..5,limit=1,sort=nearest] text set value {text:"$(fill_rar_label) Set",color:"$(fill_rar_color)",italic:true}
