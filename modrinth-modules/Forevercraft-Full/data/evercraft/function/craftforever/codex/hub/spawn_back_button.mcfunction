# Craftforever Codex — Universal back button
# Run as player, at player position

execute rotated ~ 0 positioned ^ ^0.92 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.BackBtnText"],billboard:"center",text:{text:"[ \u2190 Menu ]",color:"yellow",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^0.88 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.BackBtnClick"],width:0.4f,height:0.06f,response:1b}
