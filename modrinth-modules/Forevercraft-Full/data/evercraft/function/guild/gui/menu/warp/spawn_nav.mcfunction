# Guild Warp — Spawn page navigation buttons
# Shows [< Prev] and [Next >] at bottom of content area

# [< Prev] button
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~0.35 ~-0.22 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el","ec.guild_warp_prev_txt"], billboard:"center", text:[{text:"< ",color:"gray"},{text:"Prev",color:"gray"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]} }
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~0.35 ~-0.32 ~ run summon interaction ~ ~ ~ { Tags:["ec.guild_menu_el","ec.guild_page_el","ec.guild_warp_prev"], width:0.3f, height:0.10f, response:1b }

# [Next >] button
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~-0.35 ~-0.22 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.guild_menu_el","ec.guild_page_el","ec.guild_warp_next_txt"], billboard:"center", text:[{text:"Next",color:"gray"},{text:" >",color:"gray"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]} }
execute at @e[type=item_display,tag=ec.guild_menu_bg,distance=..5,limit=1] positioned ~-0.35 ~-0.32 ~ run summon interaction ~ ~ ~ { Tags:["ec.guild_menu_el","ec.guild_page_el","ec.guild_warp_next"], width:0.3f, height:0.10f, response:1b }
