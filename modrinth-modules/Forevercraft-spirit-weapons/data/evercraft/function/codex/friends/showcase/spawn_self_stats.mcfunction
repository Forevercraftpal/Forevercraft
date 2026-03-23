# Showcase — Spawn friend count stats (macro)
# $(fr_count)

$execute rotated ~ 0 positioned ^0.55 ^2.15 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el"],billboard:"center",text:[{text:"Friends: ",color:"gray"},{text:"$(fr_count)",color:"white"},{text:"/50",color:"dark_gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.19f,0.19f,0.19f]}}
