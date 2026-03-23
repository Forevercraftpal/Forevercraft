# Infinite Castle — Menu Open
# Shows continue/restart/cancel options
# Run as: player, at player position

# Toggle — if already in menu, close instead
execute if entity @s[tag=IC.InMenu] run return run function evercraft:castle/menu/close

# Safety: kill orphaned menu elements
execute at @s run kill @e[type=text_display,tag=IC.MenuEl,distance=..5]
execute at @s run kill @e[type=interaction,tag=IC.MenuEl,distance=..5]
execute at @s run kill @e[type=item_display,tag=IC.MenuEl,distance=..5]

# Tag player
tag @s add IC.InMenu
scoreboard players set @s dg.menu_time 0

# Check record floor
execute unless score @s ic.record matches 1.. run scoreboard players set @s ic.record 0

# Calculate key cost for display
# Base cost: 3 keys
# Continue cost: 3 + (start_floor / 10)
scoreboard players set #ic_key_cost ec.var 3
execute if score @s ic.record matches 10.. run scoreboard players operation #ic_continue_gates ec.var = @s ic.record
execute if score @s ic.record matches 10.. run scoreboard players operation #ic_continue_gates ec.var /= #10 ec.const
execute if score @s ic.record matches 10.. run scoreboard players operation #ic_key_cost_continue ec.var = #ic_continue_gates ec.var
execute if score @s ic.record matches 10.. run scoreboard players add #ic_key_cost_continue ec.var 3

# Constants needed
execute unless score #10 ec.const matches 10 run scoreboard players set #10 ec.const 10

# === BACKGROUND PANEL ===
execute rotated ~ 0 positioned ^ ^2.15 ^1.8 run summon item_display ~ ~ ~ { Tags:["IC.MenuEl","IC.BG"], billboard:"center", item:{id:"black_stained_glass_pane",count:1}, item_display:"fixed", transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[2.6f,2.2f,0.01f]} }

# === TITLE ===
execute rotated ~ 0 positioned ^ ^3.0 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["IC.MenuEl"], billboard:"center", text:[{text:"\u2694 ",color:"dark_red"},{text:"Infinite Castle",color:"red",bold:true},{text:" \u2694",color:"dark_red"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.608f,0.608f,0.608f]} }

# === SUBTITLE ===
execute rotated ~ 0 positioned ^ ^2.77 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["IC.MenuEl"], billboard:"center", text:{text:"Climb as high as you can. Death ends the run.",color:"gray",italic:true}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }

# === START FROM FLOOR 1 BUTTON ===
execute rotated ~ 0 positioned ^ ^2.53 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["IC.MenuEl","IC.StartTxt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Start Floor 1",color:"green",bold:true},{text:" ]",color:"dark_gray"},{text:" — 3 Keys",color:"dark_green"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]} }
execute rotated ~ 0 positioned ^ ^2.41 ^1.8 run summon interaction ~ ~ ~ { Tags:["IC.MenuEl","IC.StartBtn"], width:0.8f,height:0.14f,response:1b }

# === CONTINUE FROM RECORD BUTTON (only if record >= 2) ===
execute if score @s ic.record matches 2.. rotated ~ 0 positioned ^ ^2.27 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["IC.MenuEl","IC.ContTxt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Continue",color:"yellow",bold:true},{text:" ]",color:"dark_gray"},{text:" — From record floor",color:"gold"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]} }
execute if score @s ic.record matches 2.. rotated ~ 0 positioned ^ ^2.15 ^1.8 run summon interaction ~ ~ ~ { Tags:["IC.MenuEl","IC.ContBtn"], width:0.8f,height:0.14f,response:1b }

# Update continue text with actual floor number and key cost (macro)
execute if score @s ic.record matches 2.. run function evercraft:castle/menu/update_continue

# === CANCEL BUTTON ===
execute rotated ~ 0 positioned ^ ^1.9 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["IC.MenuEl","IC.CancelTxt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Cancel",color:"gray",bold:true},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute rotated ~ 0 positioned ^ ^1.8 ^1.8 run summon interaction ~ ~ ~ { Tags:["IC.MenuEl","IC.CancelBtn"], width:0.4f,height:0.12f,response:1b }

# Session isolation
scoreboard players add #gui_session ec.var 1
scoreboard players operation @s adv.gui_session = #gui_session ec.var
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=IC.MenuEl,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=item_display,tag=IC.MenuEl,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=interaction,tag=IC.MenuEl,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.4 0.8
