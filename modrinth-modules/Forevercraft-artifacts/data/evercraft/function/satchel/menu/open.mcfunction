# Satchel Menu — Open
# Run as the player at their position

# Safety: kill any orphaned menu elements from a previous session
execute at @s run kill @e[type=text_display,tag=ec.satchel_el,distance=..5]
execute at @s run kill @e[type=interaction,tag=ec.satchel_el,distance=..5]
execute at @s run kill @e[type=item_display,tag=ec.satchel_el,distance=..5]

# Tag player as in menu
tag @s add ec.satchel_in_menu

# Copy bag_id to temp for macro access (set by on_open)
execute store result storage evercraft:satchel temp.bid int 1 run scoreboard players get @s ec.bag_id

# Spawn background panel
execute at @s rotated ~ 0 positioned ^ ^2.0 ^1.8 run summon item_display ~ ~ ~ { Tags:["ec.satchel_el","ec.satchel_bg"], billboard:"center", item:{id:"black_stained_glass_pane",count:1}, item_display:"fixed", transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[3.0f,2.8f,0.01f]} }

# Spawn title — dynamic based on tier
execute at @s rotated ~ 0 positioned ^ ^2.7 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.satchel_el","ec.satchel_title"], billboard:"center", text:[{text:"\u2726 ",color:"dark_purple"},{text:"Essentials Satchel",color:"gold",bold:true},{text:" \u2726",color:"dark_purple"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]} }

# Spawn instruction text
execute at @s rotated ~ 0 positioned ^ ^1.4 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.satchel_el","ec.satchel_hint"], billboard:"center", text:[{text:"Hold artifact + click slot to store",color:"gray",italic:true}], background:0, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }

# Spawn [Close] button
execute at @s rotated ~ 0 positioned ^ ^1.25 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.satchel_el","ec.satchel_close_txt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Close",color:"gray",bold:true},{text:" ]",color:"dark_gray"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute at @s rotated ~ 0 positioned ^ ^1.15 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.satchel_el","ec.satchel_close_btn"], width:0.5f, height:0.12f, response:1b }

# Spawn slot displays (up to 7 — we show max_slots worth)
# Slot 0 — Y offset ^2.65
execute at @s rotated ~ 0 positioned ^ ^2.5 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.satchel_el","ec.satchel_slot_txt","ec.satchel_s0_txt"], billboard:"center", text:[{text:"1. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}], background:0, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute at @s rotated ~ 0 positioned ^ ^2.4 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.satchel_el","ec.satchel_slot","ec.satchel_s0"], width:0.8f, height:0.12f, response:1b }

# Slot 1 — Y offset ^2.48
execute at @s rotated ~ 0 positioned ^ ^2.33 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.satchel_el","ec.satchel_slot_txt","ec.satchel_s1_txt"], billboard:"center", text:[{text:"2. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}], background:0, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute at @s rotated ~ 0 positioned ^ ^2.23 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.satchel_el","ec.satchel_slot","ec.satchel_s1"], width:0.8f, height:0.12f, response:1b }

# Slot 2 — Y offset ^2.31
execute if score @s ec.satchel_slots matches 3.. at @s rotated ~ 0 positioned ^ ^2.16 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.satchel_el","ec.satchel_slot_txt","ec.satchel_s2_txt"], billboard:"center", text:[{text:"3. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}], background:0, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute if score @s ec.satchel_slots matches 3.. at @s rotated ~ 0 positioned ^ ^2.06 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.satchel_el","ec.satchel_slot","ec.satchel_s2"], width:0.8f, height:0.12f, response:1b }

# Slot 3 — Y offset ^2.14
execute if score @s ec.satchel_slots matches 4.. at @s rotated ~ 0 positioned ^ ^1.99 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.satchel_el","ec.satchel_slot_txt","ec.satchel_s3_txt"], billboard:"center", text:[{text:"4. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}], background:0, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute if score @s ec.satchel_slots matches 4.. at @s rotated ~ 0 positioned ^ ^1.89 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.satchel_el","ec.satchel_slot","ec.satchel_s3"], width:0.8f, height:0.12f, response:1b }

# Slot 4 — Y offset ^1.97
execute if score @s ec.satchel_slots matches 5.. at @s rotated ~ 0 positioned ^ ^1.82 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.satchel_el","ec.satchel_slot_txt","ec.satchel_s4_txt"], billboard:"center", text:[{text:"5. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}], background:0, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute if score @s ec.satchel_slots matches 5.. at @s rotated ~ 0 positioned ^ ^1.72 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.satchel_el","ec.satchel_slot","ec.satchel_s4"], width:0.8f, height:0.12f, response:1b }

# Slot 5 — Y offset ^1.80
execute if score @s ec.satchel_slots matches 6.. at @s rotated ~ 0 positioned ^ ^1.65 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.satchel_el","ec.satchel_slot_txt","ec.satchel_s5_txt"], billboard:"center", text:[{text:"6. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}], background:0, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute if score @s ec.satchel_slots matches 6.. at @s rotated ~ 0 positioned ^ ^1.55 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.satchel_el","ec.satchel_slot","ec.satchel_s5"], width:0.8f, height:0.12f, response:1b }

# Slot 6 — Y offset ^1.63
execute if score @s ec.satchel_slots matches 7 at @s rotated ~ 0 positioned ^ ^1.48 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.satchel_el","ec.satchel_slot_txt","ec.satchel_s6_txt"], billboard:"center", text:[{text:"7. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}], background:0, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute if score @s ec.satchel_slots matches 7 at @s rotated ~ 0 positioned ^ ^1.38 ^1.8 run summon interaction ~ ~ ~ { Tags:["ec.satchel_el","ec.satchel_slot","ec.satchel_s6"], width:0.8f, height:0.12f, response:1b }

# Refresh slot displays with actual contents from storage
function evercraft:satchel/menu/refresh

# Start menu tick for click responsiveness
schedule function evercraft:satchel/menu_tick 2t replace

# Sound

# Session isolation
scoreboard players add #gui_session ec.var 1
scoreboard players operation @s adv.gui_session = #gui_session ec.var
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=ec.satchel_el,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=item_display,tag=ec.satchel_el,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=interaction,tag=ec.satchel_el,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

playsound minecraft:block.chest.open master @s ~ ~ ~ 0.5 1.2
