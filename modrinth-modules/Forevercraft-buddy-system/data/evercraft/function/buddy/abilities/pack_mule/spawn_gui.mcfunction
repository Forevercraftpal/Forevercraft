# Pack Mule — Spawn GUI
# @s = player, position context set

# Background panel
execute rotated ~ 0 positioned ^ ^2.0 ^1.8 run summon item_display ~ ~ ~ {Tags:["ec.mule_el"],billboard:"center",item:{id:"yellow_stained_glass_pane",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[2.5f,1.8f,0.01f]}}

# Title
execute rotated ~ 0 positioned ^ ^2.5 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.mule_el"],billboard:"center",text:[{text:"\uD83D\uDCE6 ",color:"#FFD700"},{text:"Buddy Pack Mule",color:"#FFD700",bold:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}

# Instruction
execute rotated ~ 0 positioned ^ ^1.55 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.mule_el"],billboard:"center",text:[{text:"Hold item + click slot to store | Click stored item to retrieve",color:"gray",italic:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

# Slot 0
execute rotated ~ 0 positioned ^ ^2.3 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.mule_el","ec.mule_s0_txt"],billboard:"center",text:[{text:"1. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^2.2 ^1.8 run summon interaction ~ ~ ~ {Tags:["ec.mule_el","ec.mule_slot","ec.mule_s0"],width:0.8f,height:0.12f,response:1b}

# Slot 1
execute rotated ~ 0 positioned ^ ^2.1 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.mule_el","ec.mule_s1_txt"],billboard:"center",text:[{text:"2. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^2.0 ^1.8 run summon interaction ~ ~ ~ {Tags:["ec.mule_el","ec.mule_slot","ec.mule_s1"],width:0.8f,height:0.12f,response:1b}

# Slot 2
execute rotated ~ 0 positioned ^ ^1.9 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.mule_el","ec.mule_s2_txt"],billboard:"center",text:[{text:"3. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^1.8 ^1.8 run summon interaction ~ ~ ~ {Tags:["ec.mule_el","ec.mule_slot","ec.mule_s2"],width:0.8f,height:0.12f,response:1b}

# Close button
execute rotated ~ 0 positioned ^ ^1.68 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.mule_el","ec.mule_close_txt"],billboard:"center",text:[{text:"[ ",color:"dark_gray"},{text:"Close",color:"gray",bold:true},{text:" ]",color:"dark_gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^1.58 ^1.8 run summon interaction ~ ~ ~ {Tags:["ec.mule_el","ec.mule_close_btn"],width:0.5f,height:0.12f,response:1b}

# Session isolation
scoreboard players add #gui_session ec.var 1
scoreboard players operation @s adv.gui_session = #gui_session ec.var
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=ec.mule_el,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=item_display,tag=ec.mule_el,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=interaction,tag=ec.mule_el,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
