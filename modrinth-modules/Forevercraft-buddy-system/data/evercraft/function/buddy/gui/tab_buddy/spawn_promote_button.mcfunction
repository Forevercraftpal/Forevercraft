# Tab 2: Spawn Promote to Best Buddy Button
# @s = player with Spiritbound buddy but no best buddy yet

execute rotated ~ 0 positioned ^ ^1.35 ^2.26 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["bd.buddy_content","companion.menuelement"],billboard:"center",text:[{text:"[",color:"dark_gray"},{text:"\u2605 Promote to Best Buddy \u2605",color:"#FF4500",bold:true},{text:"]",color:"dark_gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^1.28 ^1.8 run summon interaction ~ ~ ~ {Tags:["bd.buddy_content","bd.promote_click","companion.menuelement"],width:0.50f,height:0.06f,response:1b}

scoreboard players operation @e[type=text_display,tag=bd.buddy_content,distance=..5] companion.id = #Search companion.id
scoreboard players operation @e[type=interaction,tag=bd.buddy_content,distance=..5] companion.id = #Search companion.id
