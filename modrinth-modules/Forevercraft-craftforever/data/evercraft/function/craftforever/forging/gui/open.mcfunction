# Artisan Forge GUI — Open
# Spawns floating display entities in front of the player

# Toggle — if already open, close instead
execute if entity @s[tag=CF.InMenu] run return run function evercraft:craftforever/forging/gui/close

# Clean orphaned elements
kill @e[type=text_display,tag=CF.MenuEl,distance=..10]
kill @e[type=item_display,tag=CF.MenuEl,distance=..10]
kill @e[type=interaction,tag=CF.MenuEl,distance=..10]

# Tag player
tag @s add CF.InMenu
scoreboard players set @s ec.cf_menu_time 0
scoreboard players set @s ec.cf_state 1
scoreboard players set @s ec.cf_mat_tier -1
scoreboard players set @s ec.cf_cat_tier -1
scoreboard players set @s ec.cf_recipe 0

# Background panel
execute rotated ~ 0 positioned ^ ^2.15 ^1.8 run summon item_display ~ ~ ~ {Tags:["CF.MenuBG","CF.MenuEl"],billboard:"center",item:{id:"black_stained_glass_pane",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[2.8f,2.2f,0.01f]}}

# Title
execute rotated ~ 0 positioned ^ ^2.95 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuEl","CF.Title"],billboard:"center",text:{text:"Artisan Forge",color:"light_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.81f,0.81f,0.81f]}}

# Material line
execute rotated ~ 0 positioned ^ ^2.65 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuEl","CF.MatLine"],billboard:"center",text:{text:"Material: Empty",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}

# Catalyst line
execute rotated ~ 0 positioned ^ ^2.45 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuEl","CF.CatLine"],billboard:"center",text:{text:"Catalyst: None (optional)",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}

# Recipe status
execute rotated ~ 0 positioned ^ ^2.25 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuEl","CF.RecipeStatus"],billboard:"center",text:{text:"Deposit a material to begin",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}

# Deposit Material button
execute rotated ~ 0 positioned ^0.65 ^2.0 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuEl","CF.DepMatText"],billboard:"center",text:{text:"[ Deposit Material ]",color:"aqua",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^0.65 ^1.93 ^1.8 run summon interaction ~ ~ ~ {Tags:["CF.MenuEl","CF.DepMatBtn"],width:0.5f,height:0.1f,response:1b}

# Deposit Catalyst button
execute rotated ~ 0 positioned ^-0.65 ^2.0 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuEl","CF.DepCatText"],billboard:"center",text:{text:"[ Deposit Catalyst ]",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^-0.65 ^1.93 ^1.8 run summon interaction ~ ~ ~ {Tags:["CF.MenuEl","CF.DepCatBtn"],width:0.5f,height:0.1f,response:1b}

# Begin Forging button (initially gray — activates when recipe matches)
execute rotated ~ 0 positioned ^ ^1.75 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuEl","CF.ForgeText"],billboard:"center",text:{text:"[ Begin Forging ]",color:"gray",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute rotated ~ 0 positioned ^ ^1.68 ^1.8 run summon interaction ~ ~ ~ {Tags:["CF.MenuEl","CF.ForgeBtn"],width:0.5f,height:0.1f,response:1b}

# Close button
execute rotated ~ 0 positioned ^ ^1.5 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuEl","CF.CloseText"],billboard:"center",text:{text:"[ Close ]",color:"red"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^1.43 ^1.8 run summon interaction ~ ~ ~ {Tags:["CF.MenuEl","CF.CloseBtn"],width:0.35f,height:0.08f,response:1b}

# Session isolation
scoreboard players add #gui_session ec.var 1
scoreboard players operation @s adv.gui_session = #gui_session ec.var
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=CF.MenuEl,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=item_display,tag=CF.MenuEl,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=interaction,tag=CF.MenuEl,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

playsound minecraft:block.anvil.use master @s ~ ~ ~ 0.3 1.5
