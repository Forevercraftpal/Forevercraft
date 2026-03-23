# Guidestone Menu — Spawn text + interaction for interdimensional row
# Run at the calculated menu position
# Same as place_row_exec but calls update_text_interdim for dimension labels

# Spawn text display with destination name (same tags as normal rows for shared click handling)
execute if score #gs_placing ec.gs_temp matches 0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_text0"],billboard:"center",text:[{text:"\u25b6 ",color:"dark_aqua"},{text:"Loading...",color:"gray",italic:true}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute if score #gs_placing ec.gs_temp matches 1 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_text1"],billboard:"center",text:[{text:"\u25b6 ",color:"dark_aqua"},{text:"Loading...",color:"gray",italic:true}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute if score #gs_placing ec.gs_temp matches 2 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_text2"],billboard:"center",text:[{text:"\u25b6 ",color:"dark_aqua"},{text:"Loading...",color:"gray",italic:true}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute if score #gs_placing ec.gs_temp matches 3 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_text3"],billboard:"center",text:[{text:"\u25b6 ",color:"dark_aqua"},{text:"Loading...",color:"gray",italic:true}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute if score #gs_placing ec.gs_temp matches 4 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_text4"],billboard:"center",text:[{text:"\u25b6 ",color:"dark_aqua"},{text:"Loading...",color:"gray",italic:true}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute if score #gs_placing ec.gs_temp matches 5 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_text5"],billboard:"center",text:[{text:"\u25b6 ",color:"dark_aqua"},{text:"Loading...",color:"gray",italic:true}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute if score #gs_placing ec.gs_temp matches 6 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_text6"],billboard:"center",text:[{text:"\u25b6 ",color:"dark_aqua"},{text:"Loading...",color:"gray",italic:true}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute if score #gs_placing ec.gs_temp matches 7 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_text7"],billboard:"center",text:[{text:"\u25b6 ",color:"dark_aqua"},{text:"Loading...",color:"gray",italic:true}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}

# Spawn interaction: offset = -height (hitbox top aligns with text position)
execute if score #gs_placing ec.gs_temp matches 0 positioned ~ ~-0.06 ~ run summon interaction ~ ~ ~ {Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_slot0"],width:0.8f,height:0.06f,response:1b}
execute if score #gs_placing ec.gs_temp matches 1 positioned ~ ~-0.06 ~ run summon interaction ~ ~ ~ {Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_slot1"],width:0.8f,height:0.06f,response:1b}
execute if score #gs_placing ec.gs_temp matches 2 positioned ~ ~-0.06 ~ run summon interaction ~ ~ ~ {Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_slot2"],width:0.8f,height:0.06f,response:1b}
execute if score #gs_placing ec.gs_temp matches 3 positioned ~ ~-0.06 ~ run summon interaction ~ ~ ~ {Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_slot3"],width:0.8f,height:0.06f,response:1b}
execute if score #gs_placing ec.gs_temp matches 4 positioned ~ ~-0.06 ~ run summon interaction ~ ~ ~ {Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_slot4"],width:0.8f,height:0.06f,response:1b}
execute if score #gs_placing ec.gs_temp matches 5 positioned ~ ~-0.06 ~ run summon interaction ~ ~ ~ {Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_slot5"],width:0.8f,height:0.06f,response:1b}
execute if score #gs_placing ec.gs_temp matches 6 positioned ~ ~-0.06 ~ run summon interaction ~ ~ ~ {Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_slot6"],width:0.8f,height:0.06f,response:1b}
execute if score #gs_placing ec.gs_temp matches 7 positioned ~ ~-0.06 ~ run summon interaction ~ ~ ~ {Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_slot7"],width:0.8f,height:0.06f,response:1b}

# Ensure UUID fields exist for the macro (legacy entries may not have them)
execute unless data storage evercraft:guidestone current.uuid0 run data modify storage evercraft:guidestone current.uuid0 set value 0
execute unless data storage evercraft:guidestone current.uuid1 run data modify storage evercraft:guidestone current.uuid1 set value 0
execute unless data storage evercraft:guidestone current.uuid2 run data modify storage evercraft:guidestone current.uuid2 set value 0
execute unless data storage evercraft:guidestone current.uuid3 run data modify storage evercraft:guidestone current.uuid3 set value 0

# Update text with destination info including dimension label
function evercraft:guidestone/menu/update_text_interdim with storage evercraft:guidestone current
