# Tab 3: Spawn Pagination Navigation Arrows
# @s = player

# Previous page arrow (left)
execute rotated ~ 0 positioned ^ ^1.25 ^2.26 positioned ^0.4 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["bd.summon_content","bd.summon_prev_text","companion.menuelement"],billboard:"center",text:{text:"\u25C0 Prev",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^ ^1.18 ^1.8 positioned ^0.4 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["bd.summon_content","bd.summon_prev_click","companion.menuelement"],width:0.20f,height:0.05f,response:1b}

# Next page arrow (right)
execute rotated ~ 0 positioned ^ ^1.25 ^2.26 positioned ^-0.4 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["bd.summon_content","bd.summon_next_text","companion.menuelement"],billboard:"center",text:{text:"Next \u25B6",color:"green"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^ ^1.18 ^1.8 positioned ^-0.4 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["bd.summon_content","bd.summon_next_click","companion.menuelement"],width:0.20f,height:0.05f,response:1b}

# Color prev gray if on page 1
execute if score @s ec.bd_summon_pg matches 1 as @e[type=text_display,tag=bd.summon_prev_text,distance=..5,limit=1] run data modify entity @s text set value {text:"\u25C0 Prev",color:"dark_gray"}

scoreboard players operation @e[type=text_display,tag=bd.summon_content,distance=..5] companion.id = #Search companion.id
scoreboard players operation @e[type=interaction,tag=bd.summon_content,distance=..5] companion.id = #Search companion.id
