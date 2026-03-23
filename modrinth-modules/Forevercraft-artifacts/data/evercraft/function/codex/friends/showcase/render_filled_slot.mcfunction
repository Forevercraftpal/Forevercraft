# Showcase — Render filled slot (macro, vertical layout)
# $(name), $(color), $(y_pos), $(y_btn), $(slot)

# Achievement name with diamond marker (bold, colored)
$execute rotated ~ 0 positioned ^ ^$(y_pos) ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_slot_$(slot)"],billboard:"center",text:[{text:"\u2726 ",color:"dark_gray"},{text:"$(name)",color:"$(color)",bold:true}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}

# Click interaction
$execute rotated ~ 0 positioned ^ ^$(y_btn) ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_slot_$(slot)","ec.sc_slot_click","ec.sc_slot_click_$(slot)"],width:0.8f,height:0.10f,response:1b}
