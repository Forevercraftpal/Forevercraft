# Phase 2: HAMMER — Start (Pattern Matching)

# Pattern length by tier
execute if score @s ec.cf_mat_tier matches 0 run scoreboard players set @s ec.cf_pat_len 3
execute if score @s ec.cf_mat_tier matches 1 run scoreboard players set @s ec.cf_pat_len 4
execute if score @s ec.cf_mat_tier matches 2 run scoreboard players set @s ec.cf_pat_len 5
execute if score @s ec.cf_mat_tier matches 3 run scoreboard players set @s ec.cf_pat_len 5
execute if score @s ec.cf_mat_tier matches 4 run scoreboard players set @s ec.cf_pat_len 6

# Generate random pattern (1=Red, 2=Blue, 3=Yellow, 4=Green)
execute store result score @s ec.cf_p1 run random value 1..4
execute store result score @s ec.cf_p2 run random value 1..4
execute store result score @s ec.cf_p3 run random value 1..4
execute store result score @s ec.cf_p4 run random value 1..4
execute store result score @s ec.cf_p5 run random value 1..4
execute store result score @s ec.cf_p6 run random value 1..4

scoreboard players set @s ec.cf_pat_pos 1
scoreboard players set @s ec.cf_timer 0

# Update title
execute at @s run data modify entity @e[type=text_display,tag=CF.Title,distance=..7,limit=1] text set value [{text:"Phase 2: ",color:"gray"},{text:"HAMMER",color:"gold",bold:true}]

# Pattern display header
execute rotated ~ 0 positioned ^ ^2.6 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuEl","CF.PatternDisplay"],billboard:"center",text:{text:"Memorize the pattern!",color:"gold"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}

# Show pattern dots (individual text_display per slot)
execute store result storage evercraft:craftforever p1 int 1 run scoreboard players get @s ec.cf_p1
execute store result storage evercraft:craftforever p2 int 1 run scoreboard players get @s ec.cf_p2
execute store result storage evercraft:craftforever p3 int 1 run scoreboard players get @s ec.cf_p3
execute store result storage evercraft:craftforever p4 int 1 run scoreboard players get @s ec.cf_p4
execute store result storage evercraft:craftforever p5 int 1 run scoreboard players get @s ec.cf_p5
execute store result storage evercraft:craftforever p6 int 1 run scoreboard players get @s ec.cf_p6

function evercraft:craftforever/forging/minigame/phase2_hammer/render_slot {slot:"1",x_offset:"0.3"}
function evercraft:craftforever/forging/minigame/phase2_hammer/render_slot {slot:"2",x_offset:"0.18"}
function evercraft:craftforever/forging/minigame/phase2_hammer/render_slot {slot:"3",x_offset:"0.06"}
execute if score @s ec.cf_pat_len matches 4.. run function evercraft:craftforever/forging/minigame/phase2_hammer/render_slot {slot:"4",x_offset:"-0.06"}
execute if score @s ec.cf_pat_len matches 5.. run function evercraft:craftforever/forging/minigame/phase2_hammer/render_slot {slot:"5",x_offset:"-0.18"}
execute if score @s ec.cf_pat_len matches 6.. run function evercraft:craftforever/forging/minigame/phase2_hammer/render_slot {slot:"6",x_offset:"-0.3"}

# Spawn 4 color buttons
execute rotated ~ 0 positioned ^0.35 ^1.8 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuEl","CF.BtnRedText"],billboard:"center",text:{text:"[RED]",color:"red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^0.35 ^1.73 ^1.8 run summon interaction ~ ~ ~ {Tags:["CF.MenuEl","CF.BtnRed"],width:0.2f,height:0.1f,response:1b}

execute rotated ~ 0 positioned ^0.12 ^1.8 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuEl","CF.BtnBlueText"],billboard:"center",text:{text:"[BLU]",color:"blue",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^0.12 ^1.73 ^1.8 run summon interaction ~ ~ ~ {Tags:["CF.MenuEl","CF.BtnBlue"],width:0.2f,height:0.1f,response:1b}

execute rotated ~ 0 positioned ^-0.12 ^1.8 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuEl","CF.BtnYelText"],billboard:"center",text:{text:"[YEL]",color:"yellow",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^-0.12 ^1.73 ^1.8 run summon interaction ~ ~ ~ {Tags:["CF.MenuEl","CF.BtnYellow"],width:0.2f,height:0.1f,response:1b}

execute rotated ~ 0 positioned ^-0.35 ^1.8 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuEl","CF.BtnGrnText"],billboard:"center",text:{text:"[GRN]",color:"green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^-0.35 ^1.73 ^1.8 run summon interaction ~ ~ ~ {Tags:["CF.MenuEl","CF.BtnGreen"],width:0.2f,height:0.1f,response:1b}

# Session stamp all new elements
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=CF.MenuEl,distance=..8] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=interaction,tag=CF.MenuEl,distance=..8] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

# Info
execute at @s run data modify entity @e[type=text_display,tag=CF.RecipeStatus,distance=..7,limit=1] text set value {text:"Memorize, then repeat!",color:"yellow"}

playsound minecraft:block.anvil.use master @s ~ ~ ~ 0.5 0.8
