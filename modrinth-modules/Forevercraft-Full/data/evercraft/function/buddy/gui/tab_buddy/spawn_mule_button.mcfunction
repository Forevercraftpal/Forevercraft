# Tab 2: Spawn Pack Mule Button (tier 3+)
# @s = player

execute rotated ~ 0 positioned ^ ^1.3 ^2.26 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["bd.buddy_content","companion.menuelement"],billboard:"center",text:[{text:"[",color:"dark_gray"},{text:"Open Pack Mule",color:"yellow",bold:true},{text:"]",color:"dark_gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^ ^1.23 ^1.8 run summon interaction ~ ~ ~ {Tags:["bd.buddy_content","bd.mule_open_click","companion.menuelement"],width:0.35f,height:0.06f,response:1b}

scoreboard players operation @e[type=text_display,tag=bd.buddy_content,distance=..5] companion.id = #Search companion.id
scoreboard players operation @e[type=interaction,tag=bd.buddy_content,distance=..5] companion.id = #Search companion.id
