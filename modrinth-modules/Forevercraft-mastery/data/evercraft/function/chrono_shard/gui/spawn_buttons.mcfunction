# Chrono Shard — spawn selection GUI
# @s = player, rotated ~ 0 context (yaw-only, no pitch)

# Title
execute positioned ^ ^0.6 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_title"],billboard:"center",text:{"text":"\u23f3 Chrono Shard \u2014 Select System to Reset","color":"dark_aqua","bold":true},background:0,shadow:true,see_through:false,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}

# --- Row 1: Systems 1-4 ---
# Button 1: Class Affinity
execute positioned ^-0.45 ^0.35 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_btn1"],billboard:"center",text:{"text":"Class Affinity","color":"gold"},background:1073741824,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.45f,0.45f,0.45f]}}
execute positioned ^-0.45 ^0.35 ^1.8 run summon minecraft:interaction ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_hit1"],width:0.35f,height:0.12f,response:1b}

# Button 2: Bestiary Progress
execute positioned ^-0.05 ^0.35 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_btn2"],billboard:"center",text:{"text":"Bestiary","color":"green"},background:1073741824,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.45f,0.45f,0.45f]}}
execute positioned ^-0.05 ^0.35 ^1.8 run summon minecraft:interaction ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_hit2"],width:0.35f,height:0.12f,response:1b}

# Button 3: Quest Reputation
execute positioned ^0.35 ^0.35 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_btn3"],billboard:"center",text:{"text":"Quest Reputation","color":"yellow"},background:1073741824,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.45f,0.45f,0.45f]}}
execute positioned ^0.35 ^0.35 ^1.8 run summon minecraft:interaction ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_hit3"],width:0.35f,height:0.12f,response:1b}

# Button 4: Advantage Trees
execute positioned ^0.75 ^0.35 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_btn4"],billboard:"center",text:{"text":"Advantage Trees","color":"aqua"},background:1073741824,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.45f,0.45f,0.45f]}}
execute positioned ^0.75 ^0.35 ^1.8 run summon minecraft:interaction ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_hit4"],width:0.35f,height:0.12f,response:1b}

# --- Row 2: Systems 5-8 ---
# Button 5: Gacha Pity
execute positioned ^-0.45 ^0.15 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_btn5"],billboard:"center",text:{"text":"Gacha Pity","color":"light_purple"},background:1073741824,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.45f,0.45f,0.45f]}}
execute positioned ^-0.45 ^0.15 ^1.8 run summon minecraft:interaction ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_hit5"],width:0.35f,height:0.12f,response:1b}

# Button 6: Personal Milestones
execute positioned ^-0.05 ^0.15 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_btn6"],billboard:"center",text:{"text":"Milestones","color":"white"},background:1073741824,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.45f,0.45f,0.45f]}}
execute positioned ^-0.05 ^0.15 ^1.8 run summon minecraft:interaction ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_hit6"],width:0.35f,height:0.12f,response:1b}

# Button 7: Craftforever Milestones
execute positioned ^0.35 ^0.15 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_btn7"],billboard:"center",text:{"text":"Craftforever","color":"#FF8800"},background:1073741824,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.45f,0.45f,0.45f]}}
execute positioned ^0.35 ^0.15 ^1.8 run summon minecraft:interaction ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_hit7"],width:0.35f,height:0.12f,response:1b}

# Button 8: Pet Collection (RED = dangerous)
execute positioned ^0.75 ^0.15 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_btn8"],billboard:"center",text:{"text":"\u26a0 Pet Collection","color":"red"},background:1073741824,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.45f,0.45f,0.45f]}}
execute positioned ^0.75 ^0.15 ^1.8 run summon minecraft:interaction ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_hit8"],width:0.35f,height:0.12f,response:1b}

# --- Row 3: System 9 (centered) ---
# Button 9: Instance Timers
execute positioned ^0.15 ^-0.05 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_btn9"],billboard:"center",text:{"text":"\u231b Instance Timers","color":"dark_green"},background:1073741824,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.45f,0.45f,0.45f]}}
execute positioned ^0.15 ^-0.05 ^1.8 run summon minecraft:interaction ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_hit9"],width:0.45f,height:0.12f,response:1b}

# --- Cancel button ---
execute positioned ^0.15 ^-0.25 ^1.78 run summon minecraft:text_display ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_cancel_txt"],billboard:"center",text:{"text":"[ Cancel ]","color":"gray"},background:1073741824,shadow:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute positioned ^0.15 ^-0.25 ^1.8 run summon minecraft:interaction ~ ~ ~ {Tags:["ec.cs_gui","ec.cs_hit_cancel"],width:0.4f,height:0.12f,response:1b}

# === Tag all new GUI entities with owner ID (multiplayer safety) ===
scoreboard players add @e[tag=ec.cs_gui] ec.cs_owner 0
execute store result score @e[tag=ec.cs_gui,scores={ec.cs_owner=0}] ec.cs_owner run scoreboard players get @s ec.cs_owner
