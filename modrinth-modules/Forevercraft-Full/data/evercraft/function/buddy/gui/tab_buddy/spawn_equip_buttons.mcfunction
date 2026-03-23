# Tab 2: Spawn Equipment Buttons for Best Buddy
# @s = player with a best buddy, position context set
# Shows weapon, artifact, and accessory slot buttons

# Only show if best buddy exists
execute unless score @s ec.bd_best_type matches 1.. run return fail

# Equip Weapon button
execute rotated ~ 0 positioned ^ ^1.45 ^2.26 positioned ^0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["bd.buddy_content","companion.menuelement"],billboard:"center",text:[{text:"[",color:"dark_gray"},{text:"Equip Weapon",color:"#FF6347",bold:true},{text:"]",color:"dark_gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute rotated ~ 0 positioned ^ ^1.38 ^1.8 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["bd.buddy_content","bd.equip_weapon_click","companion.menuelement"],width:0.25f,height:0.05f,response:1b}

# Equip Artifact button
execute rotated ~ 0 positioned ^ ^1.45 ^2.26 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["bd.buddy_content","companion.menuelement"],billboard:"center",text:[{text:"[",color:"dark_gray"},{text:"Equip Artifact",color:"#9370DB",bold:true},{text:"]",color:"dark_gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute rotated ~ 0 positioned ^ ^1.38 ^1.8 run summon interaction ~ ~ ~ {Tags:["bd.buddy_content","bd.equip_artifact_click","companion.menuelement"],width:0.25f,height:0.05f,response:1b}

# Equip Accessory button
execute rotated ~ 0 positioned ^ ^1.45 ^2.26 positioned ^-0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["bd.buddy_content","companion.menuelement"],billboard:"center",text:[{text:"[",color:"dark_gray"},{text:"Accessory",color:"#FFD700",bold:true},{text:"]",color:"dark_gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute rotated ~ 0 positioned ^ ^1.38 ^1.8 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["bd.buddy_content","bd.equip_accessory_click","companion.menuelement"],width:0.25f,height:0.05f,response:1b}

scoreboard players operation @e[type=text_display,tag=bd.buddy_content,distance=..5] companion.id = #Search companion.id
scoreboard players operation @e[type=interaction,tag=bd.buddy_content,distance=..5] companion.id = #Search companion.id
