# Showcase — Spawn dream rate display (macro)
# $(dr_whole) $(dr_dec) — dream rate split into whole and decimal parts
# Self-view: clickable to show full breakdown

$execute rotated ~ 0 positioned ^ ^2.15 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el"],billboard:"center",text:[{text:"DR: ",color:"gray"},{text:"$(dr_whole)",color:"gold",bold:true},{text:".",color:"gold",bold:true},{text:"$(dr_dec)",color:"gold",bold:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.19f,0.19f,0.19f]}}

# Interaction for click-to-inspect (centered, covers the DR text area)
execute rotated ~ 0 positioned ^ ^2.12 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_dr_btn"],width:0.3f,height:0.05f,response:1b}
