# Lore GUI — Update Page Number Display (Macro)
# Macro args: gui_cur_page, gui_total_pages

$data modify entity @e[type=text_display,tag=Adv.LorePageNum,distance=..5,limit=1] text set value {"text":"Page $(gui_cur_page)/$(gui_total_pages)","color":"white"}
