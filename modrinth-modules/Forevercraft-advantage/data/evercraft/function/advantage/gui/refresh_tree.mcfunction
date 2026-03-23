# Update a single tree's text_display with current level
# Macro args from storage evercraft:advantage: gui_slot, gui_name, gui_color, gui_level, gui_prestige
# gui_prestige: 0 = normal, 1 = show [+Prestige] indicator (Lv.25 with prestige<3)
# #refresh_ready adv.temp: 0 = not ready, 1 = player meets XP+stat requirements
$execute if score #refresh_pres adv.temp matches 0 if score #refresh_ready adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.Tree$(gui_slot),limit=1,sort=nearest] text set value [{text:"$(gui_name)  ",color:"$(gui_color)"},{text:"Lv.$(gui_level)",color:"gold"}]
$execute if score #refresh_pres adv.temp matches 0 if score #refresh_ready adv.temp matches 1 run data modify entity @e[type=text_display,tag=Adv.Tree$(gui_slot),limit=1,sort=nearest] text set value [{text:"$(gui_name)  ",color:"$(gui_color)"},{text:"Lv.$(gui_level)",color:"yellow"}]
$execute if score #refresh_pres adv.temp matches 1 run data modify entity @e[type=text_display,tag=Adv.Tree$(gui_slot),limit=1,sort=nearest] text set value [{text:"$(gui_name)  ",color:"$(gui_color)"},{text:"Lv.$(gui_level)",color:"gold"},{text:" ",color:"white"},{text:"[+Prestige]",color:"light_purple",bold:true}]
