# Update a single respec tree's text_display with current level
# Macro args: gui_slot, gui_name, gui_level
# Lv.0 trees shown in dark_gray (nothing to respec), others in red
# #refresh_level adv.temp must be set by caller before invoking
$execute if score #refresh_level adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.RTree$(gui_slot),limit=1,sort=nearest] text set value [{text:"$(gui_name)  ",color:"dark_gray"},{text:"Lv.0",color:"dark_gray"}]
$execute if score #refresh_level adv.temp matches 1.. run data modify entity @e[type=text_display,tag=Adv.RTree$(gui_slot),limit=1,sort=nearest] text set value [{text:"$(gui_name)  ",color:"red"},{text:"Lv.$(gui_level)",color:"gold"}]
