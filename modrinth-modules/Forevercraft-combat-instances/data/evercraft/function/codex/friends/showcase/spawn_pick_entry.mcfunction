# Showcase — Spawn single picker entry (macro)
# $(name), $(desc), $(color), $(y_pos), $(pick_idx)

# Achievement name (clickable, bold)
$execute rotated ~ 0 positioned ^ ^$(y_pos) ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_picker_el"],billboard:"center",text:[{text:"\u25b8 ",color:"dark_gray"},{text:"$(name)",color:"$(color)",bold:true},{text:" - ",color:"dark_gray"},{text:"$(desc)",color:"gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.23f,0.23f,0.23f]}}

# Interaction entity for click detection
$execute rotated ~ 0 positioned ^ ^$(y_pos) ^2.3 positioned ^ ^-0.27 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_picker_el","ec.sc_pick_click","ec.sc_pick_click_$(pick_idx)"],width:0.9f,height:0.07f,response:1b}
