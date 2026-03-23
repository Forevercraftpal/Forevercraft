# Showcase — Spawn dream rate display for other player (macro)
# $(dr_whole) $(dr_dec) — dream rate split into whole and decimal parts
# Other-view: display only, not clickable

$execute rotated ~ 0 positioned ^0.55 ^2.15 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el"],billboard:"center",text:[{text:"DR: ",color:"gray"},{text:"$(dr_whole)",color:"gold",bold:true},{text:".",color:"gold",bold:true},{text:"$(dr_dec)",color:"gold",bold:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.19f,0.19f,0.19f]}}
