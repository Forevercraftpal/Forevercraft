# Phase 3: QUENCH — Start
scoreboard players set @s ec.cf_quench 100
scoreboard players set @s ec.cf_timer 0

# Random lock zone position (25-75 range)
execute store result score @s ec.cf_lock_zone run random value 25..75

# Title
execute at @s run data modify entity @e[type=text_display,tag=CF.Title,distance=..7,limit=1] text set value [{text:"Phase 3: ",color:"gray"},{text:"QUENCH",color:"aqua",bold:true}]

# Info
execute at @s run data modify entity @e[type=text_display,tag=CF.RecipeStatus,distance=..7,limit=1] text set value {text:"Click QUENCH when the bar hits the green zone!",color:"yellow"}

# Quench bar
execute rotated ~ 0 positioned ^ ^2.5 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuEl","CF.QuenchBar"],billboard:"center",text:{text:"\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588\u2588",color:"red"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.675f,0.675f,0.675f]}}

# Quench button
execute rotated ~ 0 positioned ^ ^1.75 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuEl","CF.QuenchText"],billboard:"center",text:{text:"[ QUENCH ]",color:"aqua",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}
execute rotated ~ 0 positioned ^ ^1.68 ^1.8 run summon interaction ~ ~ ~ {Tags:["CF.MenuEl","CF.QuenchBtn"],width:0.5f,height:0.1f,response:1b}

# Session stamp
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=CF.QuenchBar,distance=..8] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=text_display,tag=CF.QuenchText,distance=..8] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=interaction,tag=CF.QuenchBtn,distance=..8] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

playsound minecraft:item.bucket.fill master @s ~ ~ ~ 0.8 0.8
