# Trial Anvil GUI — Open
# Shows 6 trial categories as clickable buttons

# Toggle — if already open, close instead
execute if entity @s[tag=TT.InMenu] run return run function evercraft:craftforever/trial_anvil/gui/close

# Clean orphaned elements
kill @e[type=text_display,tag=TT.MenuEl,distance=..10]
kill @e[type=item_display,tag=TT.MenuEl,distance=..10]
kill @e[type=interaction,tag=TT.MenuEl,distance=..10]

# Tag player
tag @s add TT.InMenu
scoreboard players set @s rf.menu_time 0

# Background panel
execute rotated ~ 0 positioned ^ ^2.15 ^1.8 run summon item_display ~ ~ ~ {Tags:["TT.MenuBG","TT.MenuEl"],billboard:"center",item:{id:"black_stained_glass_pane",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[3.2f,2.6f,0.01f]}}

# Title
execute rotated ~ 0 positioned ^ ^3.1 ^1.8 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["TT.MenuEl","TT.Title"],billboard:"center",text:{"text":"Harvester Trials","color":"gold","bold":true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.81f,0.81f,0.81f]}}

# Subtitle
execute rotated ~ 0 positioned ^ ^2.85 ^1.8 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["TT.MenuEl","TT.Subtitle"],billboard:"center",text:{"text":"Select a Trade Trial","color":"gray","italic":true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}

# --- Category Buttons (2 columns x 3 rows) ---

# Row 1: Mining (left) | Farming (right)
execute rotated ~ 0 positioned ^0.5 ^2.55 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["TT.MenuEl","TT.CatText"],billboard:"center",text:[{"text":"[","color":"dark_gray"},{"text":" \u26cf Mining ","color":"#FFA500","bold":true},{"text":"]","color":"dark_gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute rotated ~ 0 positioned ^0.5 ^2.5 ^1.8 run summon interaction ~ ~ ~ {Tags:["TT.MenuEl","TT.CatMining"],width:0.5f,height:0.08f,response:1b}

execute rotated ~ 0 positioned ^-0.5 ^2.55 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["TT.MenuEl","TT.CatText"],billboard:"center",text:[{"text":"[","color":"dark_gray"},{"text":" \u2618 Farming ","color":"green","bold":true},{"text":"]","color":"dark_gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute rotated ~ 0 positioned ^-0.5 ^2.5 ^1.8 run summon interaction ~ ~ ~ {Tags:["TT.MenuEl","TT.CatFarming"],width:0.5f,height:0.08f,response:1b}

# Row 2: Fishing (left) | Lumber (right)
execute rotated ~ 0 positioned ^0.5 ^2.3 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["TT.MenuEl","TT.CatText"],billboard:"center",text:[{"text":"[","color":"dark_gray"},{"text":" \u2693 Fishing ","color":"aqua","bold":true},{"text":"]","color":"dark_gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute rotated ~ 0 positioned ^0.5 ^2.25 ^1.8 run summon interaction ~ ~ ~ {Tags:["TT.MenuEl","TT.CatFishing"],width:0.5f,height:0.08f,response:1b}

execute rotated ~ 0 positioned ^-0.5 ^2.3 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["TT.MenuEl","TT.CatText"],billboard:"center",text:[{"text":"[","color":"dark_gray"},{"text":" \u2e19 Lumber ","color":"#8B4513","bold":true},{"text":"]","color":"dark_gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute rotated ~ 0 positioned ^-0.5 ^2.25 ^1.8 run summon interaction ~ ~ ~ {Tags:["TT.MenuEl","TT.CatLumber"],width:0.5f,height:0.08f,response:1b}

# Row 3: Building (left) | Artisan (right)
execute rotated ~ 0 positioned ^0.5 ^2.05 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["TT.MenuEl","TT.CatText"],billboard:"center",text:[{"text":"[","color":"dark_gray"},{"text":" \u2302 Building ","color":"#DAA520","bold":true},{"text":"]","color":"dark_gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute rotated ~ 0 positioned ^0.5 ^2.0 ^1.8 run summon interaction ~ ~ ~ {Tags:["TT.MenuEl","TT.CatBuilding"],width:0.5f,height:0.08f,response:1b}

execute rotated ~ 0 positioned ^-0.5 ^2.05 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["TT.MenuEl","TT.CatText"],billboard:"center",text:[{"text":"[","color":"dark_gray"},{"text":" \u2692 Artisan ","color":"light_purple","bold":true},{"text":"]","color":"dark_gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute rotated ~ 0 positioned ^-0.5 ^2.0 ^1.8 run summon interaction ~ ~ ~ {Tags:["TT.MenuEl","TT.CatArtisan"],width:0.5f,height:0.08f,response:1b}

# --- Close Button ---
execute rotated ~ 0 positioned ^ ^1.65 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["TT.MenuEl","TT.CloseText"],billboard:"center",text:{"text":"[ Close ]","color":"red"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^1.61 ^1.8 run summon interaction ~ ~ ~ {Tags:["TT.MenuEl","TT.CloseBtn"],width:0.35f,height:0.06f,response:1b}

# Session isolation
scoreboard players add #gui_session ec.var 1
scoreboard players operation @s adv.gui_session = #gui_session ec.var
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=TT.MenuEl,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=item_display,tag=TT.MenuEl,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=interaction,tag=TT.MenuEl,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

playsound minecraft:block.anvil.use master @s ~ ~ ~ 0.3 1.5
