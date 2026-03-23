# Codex Friends — Update header text (macro)
# $(fr_count)
$execute as @e[type=text_display,tag=ec.fr_gui_header,distance=..5,limit=1] run data modify entity @s text set value [{text:"Friends: ",color:"gray"},{text:"$(fr_count)",color:"#E0B0FF"},{text:" / 50",color:"dark_gray"}]
