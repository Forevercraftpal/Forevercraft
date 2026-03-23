# Pantry Menu — Open
# Run as the player at their position

# Safety: kill any orphaned menu elements from a previous session
execute at @s run kill @e[type=text_display,tag=ec.pantry_el,distance=..5]
execute at @s run kill @e[type=interaction,tag=ec.pantry_el,distance=..5]
execute at @s run kill @e[type=item_display,tag=ec.pantry_el,distance=..5]

# Tag player as in menu, set page to 0
tag @s add ec.pantry_in_menu
scoreboard players set @s ec.pantry_page 0

# Copy pantry_id to temp for macro access
execute store result storage evercraft:pantry temp.pid int 1 run scoreboard players get @s ec.pid

# Spawn background panel
execute at @s rotated ~ 0 positioned ^ ^2.0 ^1.8 run summon item_display ~ ~ ~ { Tags:["ec.pantry_el","ec.pantry_bg"], billboard:"center", item:{id:"black_stained_glass_pane",count:1}, item_display:"fixed", transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[3.0f,3.4f,0.01f]} }

# Spawn title
execute at @s rotated ~ 0 positioned ^ ^2.9 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.pantry_el","ec.pantry_title"], billboard:"center", text:[{text:"\u2726 ",color:"#8B4513"},{text:"Pantry",color:"gold",bold:true},{text:" \u2726",color:"#8B4513"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]} }

# Spawn instruction text
execute at @s rotated ~ 0 positioned ^ ^1.1 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.pantry_el","ec.pantry_hint"], billboard:"center", text:[{text:"Hold cooking item + click slot to store",color:"gray",italic:true}], background:0, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }

# Spawn [Close] button
execute at @s rotated ~ 0 positioned ^ ^0.95 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.pantry_el","ec.pantry_close_txt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Close",color:"gray",bold:true},{text:" ]",color:"dark_gray"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute at @s rotated ~ 0 positioned ^ ^0.85 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.pantry_el","ec.pantry_close_btn"], width:0.5f, height:0.12f, response:1b }

# Spawn navigation buttons — [<] Page X/3 [>]
execute at @s rotated ~ 0 positioned ^ ^1.25 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.pantry_el","ec.pantry_page_txt"], billboard:"center", text:[{text:"Page 1/3",color:"white"}], background:0, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }

# [<] prev button
execute at @s rotated ~ 0 positioned ^-0.25 ^1.25 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.pantry_el","ec.pantry_prev_txt"], billboard:"center", text:[{text:"[<]",color:"gold",bold:true}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute at @s rotated ~ 0 positioned ^-0.25 ^1.15 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.pantry_el","ec.pantry_prev_btn"], width:0.3f, height:0.12f, response:1b }

# [>] next button
execute at @s rotated ~ 0 positioned ^0.25 ^1.25 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.pantry_el","ec.pantry_next_txt"], billboard:"center", text:[{text:"[>]",color:"gold",bold:true}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute at @s rotated ~ 0 positioned ^0.25 ^1.15 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.pantry_el","ec.pantry_next_btn"], width:0.3f, height:0.12f, response:1b }

# Spawn 9 slot displays + interactions
# Slot 0 — Y ^2.85
execute at @s rotated ~ 0 positioned ^ ^2.7 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.pantry_el","ec.pantry_slot_txt","ec.pantry_s0_txt"], billboard:"center", text:[{text:"1. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}], background:0, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute at @s rotated ~ 0 positioned ^ ^2.6 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.pantry_el","ec.pantry_slot","ec.pantry_s0"], width:0.8f, height:0.12f, response:1b }

# Slot 1 — Y ^2.68
execute at @s rotated ~ 0 positioned ^ ^2.53 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.pantry_el","ec.pantry_slot_txt","ec.pantry_s1_txt"], billboard:"center", text:[{text:"2. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}], background:0, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute at @s rotated ~ 0 positioned ^ ^2.43 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.pantry_el","ec.pantry_slot","ec.pantry_s1"], width:0.8f, height:0.12f, response:1b }

# Slot 2 — Y ^2.51
execute at @s rotated ~ 0 positioned ^ ^2.36 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.pantry_el","ec.pantry_slot_txt","ec.pantry_s2_txt"], billboard:"center", text:[{text:"3. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}], background:0, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute at @s rotated ~ 0 positioned ^ ^2.26 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.pantry_el","ec.pantry_slot","ec.pantry_s2"], width:0.8f, height:0.12f, response:1b }

# Slot 3 — Y ^2.34
execute at @s rotated ~ 0 positioned ^ ^2.19 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.pantry_el","ec.pantry_slot_txt","ec.pantry_s3_txt"], billboard:"center", text:[{text:"4. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}], background:0, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute at @s rotated ~ 0 positioned ^ ^2.09 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.pantry_el","ec.pantry_slot","ec.pantry_s3"], width:0.8f, height:0.12f, response:1b }

# Slot 4 — Y ^2.17
execute at @s rotated ~ 0 positioned ^ ^2.02 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.pantry_el","ec.pantry_slot_txt","ec.pantry_s4_txt"], billboard:"center", text:[{text:"5. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}], background:0, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute at @s rotated ~ 0 positioned ^ ^1.92 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.pantry_el","ec.pantry_slot","ec.pantry_s4"], width:0.8f, height:0.12f, response:1b }

# Slot 5 — Y ^2.00
execute at @s rotated ~ 0 positioned ^ ^1.85 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.pantry_el","ec.pantry_slot_txt","ec.pantry_s5_txt"], billboard:"center", text:[{text:"6. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}], background:0, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute at @s rotated ~ 0 positioned ^ ^1.75 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.pantry_el","ec.pantry_slot","ec.pantry_s5"], width:0.8f, height:0.12f, response:1b }

# Slot 6 — Y ^1.83
execute at @s rotated ~ 0 positioned ^ ^1.68 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.pantry_el","ec.pantry_slot_txt","ec.pantry_s6_txt"], billboard:"center", text:[{text:"7. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}], background:0, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute at @s rotated ~ 0 positioned ^ ^1.58 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.pantry_el","ec.pantry_slot","ec.pantry_s6"], width:0.8f, height:0.12f, response:1b }

# Slot 7 — Y ^1.66
execute at @s rotated ~ 0 positioned ^ ^1.51 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.pantry_el","ec.pantry_slot_txt","ec.pantry_s7_txt"], billboard:"center", text:[{text:"8. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}], background:0, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute at @s rotated ~ 0 positioned ^ ^1.41 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.pantry_el","ec.pantry_slot","ec.pantry_s7"], width:0.8f, height:0.12f, response:1b }

# Slot 8 — Y ^1.49
execute at @s rotated ~ 0 positioned ^ ^1.34 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.pantry_el","ec.pantry_slot_txt","ec.pantry_s8_txt"], billboard:"center", text:[{text:"9. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}], background:0, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute at @s rotated ~ 0 positioned ^ ^1.24 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.pantry_el","ec.pantry_slot","ec.pantry_s8"], width:0.8f, height:0.12f, response:1b }

# Refresh slot displays with actual contents from storage
function evercraft:pantry/menu/refresh

# Start menu tick
schedule function evercraft:pantry/menu_tick 2t replace

# Sound

# Session isolation
scoreboard players add #gui_session ec.var 1
scoreboard players operation @s adv.gui_session = #gui_session ec.var
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=ec.pantry_el,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=item_display,tag=ec.pantry_el,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=interaction,tag=ec.pantry_el,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

playsound minecraft:block.barrel.open master @s ~ ~ ~ 0.5 1.2
