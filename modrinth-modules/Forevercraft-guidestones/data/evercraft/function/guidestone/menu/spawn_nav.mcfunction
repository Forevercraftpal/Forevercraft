# Guidestone Menu — Spawn page navigation arrows
# Run as the player at their position
# Anchored to background entity so they don't shift on page change

# Previous page arrow (screen left)
execute at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] rotated as @s rotated ~ 0 positioned ^0.5 ^-0.6 ^-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_nav_prev_txt"], billboard:"center", text:{text:"[ < Prev ]",color:"gray",bold:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] rotated as @s rotated ~ 0 positioned ^0.5 ^-0.7 ^0 run summon interaction ~ ~ ~ { Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_nav_prev"], width:0.4f, height:0.12f, response:1b }

# Next page arrow (screen right)
execute at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] rotated as @s rotated ~ 0 positioned ^-0.5 ^-0.6 ^-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_nav_next_txt"], billboard:"center", text:{text:"[ Next > ]",color:"gray",bold:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute at @e[type=item_display,tag=ec.gs_menu_bg,distance=..5,limit=1] rotated as @s rotated ~ 0 positioned ^-0.5 ^-0.7 ^0 run summon interaction ~ ~ ~ { Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_nav_next"], width:0.4f, height:0.12f, response:1b }
