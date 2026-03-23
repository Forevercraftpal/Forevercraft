# Buddy GUI — Switch Tab
# @s = player in menu
# #bd_new_tab ec.temp = tab to switch to (1-4)

# Don't switch if already on this tab
execute if score @s ec.bd_tab = #bd_new_tab ec.temp run return fail

# Close current tab's content
execute if score @s ec.bd_tab matches 1 run function evercraft:buddy/gui/tab_companions_hide
execute if score @s ec.bd_tab matches 2 at @s run function evercraft:buddy/gui/tab_buddy/close
execute if score @s ec.bd_tab matches 3 at @s run function evercraft:buddy/gui/tab_summon/close
execute if score @s ec.bd_tab matches 4 at @s run function evercraft:buddy/gui/tab_training/close

# Update tab variable
scoreboard players operation @s ec.bd_tab = #bd_new_tab ec.temp

# Update tab button colors (active = green+bold, inactive = gray)
execute as @e[type=text_display,tag=bd.tab1_text,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s text set value {text:"Companions",color:"gray"}
execute as @e[type=text_display,tag=bd.tab2_text,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s text set value {text:"Buddy",color:"gray"}
execute as @e[type=text_display,tag=bd.tab3_text,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s text set value {text:"Summon",color:"gray"}
execute as @e[type=text_display,tag=bd.tab4_text,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s text set value {text:"Training",color:"gray"}

# Highlight active tab
execute if score @s ec.bd_tab matches 1 as @e[type=text_display,tag=bd.tab1_text,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s text set value {text:"Companions",color:"green",bold:true}
execute if score @s ec.bd_tab matches 2 as @e[type=text_display,tag=bd.tab2_text,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s text set value {text:"Buddy",color:"green",bold:true}
execute if score @s ec.bd_tab matches 3 as @e[type=text_display,tag=bd.tab3_text,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s text set value {text:"Summon",color:"green",bold:true}
execute if score @s ec.bd_tab matches 4 as @e[type=text_display,tag=bd.tab4_text,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s text set value {text:"Training",color:"green",bold:true}

# Open new tab's content
execute if score @s ec.bd_tab matches 1 run function evercraft:buddy/gui/tab_companions_show
execute if score @s ec.bd_tab matches 2 at @s run function evercraft:buddy/gui/tab_buddy/open
execute if score @s ec.bd_tab matches 3 at @s run function evercraft:buddy/gui/tab_summon/open
execute if score @s ec.bd_tab matches 4 at @s run function evercraft:buddy/gui/tab_training/open

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
