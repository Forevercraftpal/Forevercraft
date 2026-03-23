# Codex Friends — Update title text_display in detail view (macro)
# $(title_display)
$execute as @e[type=text_display,tag=ec.fr_gui_detail,distance=..5] if data entity @s {text:[{text:"Title: "}]} run data modify entity @s text set value [{text:"Title: ",color:"gray"},{text:"$(title_display)",color:"#E0B0FF"}]
