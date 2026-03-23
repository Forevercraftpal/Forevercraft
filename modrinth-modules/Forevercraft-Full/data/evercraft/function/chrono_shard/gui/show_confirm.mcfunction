# Chrono Shard — show confirmation screen
# @s = player, at @s rotated ~ 0 context

# Kill selection entities (keep title) — distance-scoped for multiplayer safety
kill @e[tag=ec.cs_gui,tag=!ec.cs_title,distance=..5]

# Update title (distance-scoped to this player's title)
data modify entity @e[tag=ec.cs_title,distance=..5,limit=1] text set value {"text":"\u26a0 CONFIRM RESET \u26a0","color":"red","bold":true}

# System name display (changes based on selection)
execute if score @s ec.cs_select matches 1 positioned ^0.15 ^0.38 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_sysname"],billboard:"center",text:{"text":"Class Affinity","color":"gold","bold":true},background:0,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.55f,0.55f,0.55f]}}
execute if score @s ec.cs_select matches 2 positioned ^0.15 ^0.38 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_sysname"],billboard:"center",text:{"text":"Bestiary Progress","color":"green","bold":true},background:0,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.55f,0.55f,0.55f]}}
execute if score @s ec.cs_select matches 3 positioned ^0.15 ^0.38 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_sysname"],billboard:"center",text:{"text":"Quest Reputation","color":"yellow","bold":true},background:0,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.55f,0.55f,0.55f]}}
execute if score @s ec.cs_select matches 4 positioned ^0.15 ^0.38 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_sysname"],billboard:"center",text:{"text":"Advantage Trees","color":"aqua","bold":true},background:0,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.55f,0.55f,0.55f]}}
execute if score @s ec.cs_select matches 5 positioned ^0.15 ^0.38 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_sysname"],billboard:"center",text:{"text":"Gacha Pity","color":"light_purple","bold":true},background:0,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.55f,0.55f,0.55f]}}
execute if score @s ec.cs_select matches 6 positioned ^0.15 ^0.38 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_sysname"],billboard:"center",text:{"text":"Personal Milestones","color":"white","bold":true},background:0,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.55f,0.55f,0.55f]}}
execute if score @s ec.cs_select matches 7 positioned ^0.15 ^0.38 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_sysname"],billboard:"center",text:{"text":"Craftforever Milestones","color":"#FF8800","bold":true},background:0,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.55f,0.55f,0.55f]}}
execute if score @s ec.cs_select matches 8 positioned ^0.15 ^0.38 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_sysname"],billboard:"center",text:{"text":"\u26a0 PET COLLECTION \u26a0","color":"red","bold":true},background:0,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.55f,0.55f,0.55f]}}
execute if score @s ec.cs_select matches 9 positioned ^0.15 ^0.38 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_sysname"],billboard:"center",text:{"text":"Instance Timers","color":"dark_green","bold":true},background:0,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.55f,0.55f,0.55f]}}

# Warning text
execute positioned ^0.15 ^0.25 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_warn"],billboard:"center",text:[{"text":"This will ","color":"white"},{"text":"permanently erase","color":"red","bold":true},{"text":" all","color":"white"}],background:0,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}

execute positioned ^0.15 ^0.15 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_warn2"],billboard:"center",text:{"text":"progress in this system. Rewards already claimed are kept.","color":"gray"},background:0,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}}

# Extra pet warning
execute if score @s ec.cs_select matches 8 positioned ^0.15 ^0.05 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_pet_warn"],billboard:"center",text:{"text":"ALL pets, levels, and bonds will be LOST FOREVER.","color":"red","bold":true},background:0,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}}

# Instance timer clarification
execute if score @s ec.cs_select matches 9 positioned ^0.15 ^0.05 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_inst_info"],billboard:"center",text:{"text":"All dungeon, heist, and trial lockouts will be cleared.","color":"dark_green","italic":true},background:0,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}}

# Confirm button (red)
execute positioned ^-0.15 ^-0.1 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_yes_txt"],billboard:"center",text:{"text":"[ RESET ]","color":"red","bold":true},background:1073741824,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.55f,0.55f,0.55f]}}
execute positioned ^-0.15 ^-0.1 ^1.8 run summon minecraft:interaction ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_hit_yes"],width:0.4f,height:0.14f,response:1b}

# Go Back button (green)
execute positioned ^0.45 ^-0.1 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_no_txt"],billboard:"center",text:{"text":"[ Go Back ]","color":"green"},background:1073741824,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.55f,0.55f,0.55f]}}
execute positioned ^0.45 ^-0.1 ^1.8 run summon minecraft:interaction ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_hit_no"],width:0.4f,height:0.14f,response:1b}

# Cancel button
execute positioned ^0.15 ^-0.3 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_cancel_txt"],billboard:"center",text:{"text":"[ Cancel ]","color":"gray"},background:1073741824,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.45f,0.45f,0.45f]}}
execute positioned ^0.15 ^-0.3 ^1.8 run summon minecraft:interaction ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_hit_cancel"],width:0.4f,height:0.12f,response:1b}

# === Tag new GUI entities with owner ID (multiplayer safety) ===
scoreboard players add @e[tag=ec.cs_gui] ec.cs_owner 0
execute store result score @e[tag=ec.cs_gui,scores={ec.cs_owner=0}] ec.cs_owner run scoreboard players get @s ec.cs_owner

# Set confirm state
scoreboard players set @s ec.cs_confirm 1
