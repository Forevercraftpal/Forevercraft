# Codex Friends — Update page number display (macro)
# $(page), $(total_pages)
$execute as @e[type=text_display,tag=ec.fr_gui_page_txt,distance=..5,limit=1] run data modify entity @s text set value [{text:"Page $(page) / $(total_pages)",color:"white"}]
