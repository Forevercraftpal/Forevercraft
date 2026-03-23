# Classes — Spawn "Back to Classes" Sub-Nav Button
# Run as the player, facing the anchor

execute rotated ~ 0 positioned ^0.65 ^0.85 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2"],billboard:"center",text:{text:"< Back to Classes",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^ ^0.82 ^2.3 positioned ^0.65 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsBackClick"],width:0.5f,height:0.05f,response:1b}
