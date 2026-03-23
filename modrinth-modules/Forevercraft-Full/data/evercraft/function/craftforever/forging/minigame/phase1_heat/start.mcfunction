# Phase 1: HEAT — Start
scoreboard players set @s ec.cf_heat 0
scoreboard players set @s ec.cf_timer 0

# Update title
execute at @s run data modify entity @e[type=text_display,tag=CF.Title,distance=..7,limit=1] text set value [{text:"Phase 1: ",color:"gray"},{text:"HEAT",color:"red",bold:true}]

# Info
execute at @s run data modify entity @e[type=text_display,tag=CF.RecipeStatus,distance=..7,limit=1] text set value {text:"Watch the bar \u2014 click when it hits the sweet spot!",color:"yellow"}

# Heat bar display
execute rotated ~ 0 positioned ^ ^2.5 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuEl","CF.HeatBar"],billboard:"center",text:{text:"\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591\u2591",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.675f,0.675f,0.675f]}}

# Heat Ready button
execute rotated ~ 0 positioned ^ ^1.75 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuEl","CF.HeatReadyText"],billboard:"center",text:{text:"[ HEAT READY ]",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}
execute rotated ~ 0 positioned ^ ^1.68 ^1.8 run summon interaction ~ ~ ~ {Tags:["CF.MenuEl","CF.HeatReadyBtn"],width:0.5f,height:0.1f,response:1b}

# Session stamp new elements
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=CF.HeatBar,distance=..8] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=text_display,tag=CF.HeatReadyText,distance=..8] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=interaction,tag=CF.HeatReadyBtn,distance=..8] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

playsound minecraft:block.furnace.fire_crackle master @s ~ ~ ~ 0.8 1.0
