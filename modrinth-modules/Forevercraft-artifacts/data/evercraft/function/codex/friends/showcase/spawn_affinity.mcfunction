# Showcase — Spawn top affinity display (macro)
# $(aff_class) $(aff_stage) $(aff_color) $(aff_xp)

# Affinity label + class + stage (centered on right side)
$execute rotated ~ 0 positioned ^-0.65 ^1.86 ^1.77 run summon text_display ~ ~ ~ {"brightness":{"block":15,"sky":15},"shadow_radius":0f,"Tags":["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el"],"billboard":"center","text":[{"text":"$(aff_class)","color":"white"},{"text":" — ","color":"dark_gray"},{"text":"$(aff_stage)","color":"$(aff_color)"}],"background":0,"shadow":1b,"transformation":{"left_rotation":[0f,0f,0f,1f],"right_rotation":[0f,0f,0f,1f],"translation":[0f,0f,0f],"scale":[0.17f,0.17f,0.17f]}}

# XP value below
$execute rotated ~ 0 positioned ^-0.65 ^1.82 ^1.77 run summon text_display ~ ~ ~ {"brightness":{"block":15,"sky":15},"shadow_radius":0f,"Tags":["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el"],"billboard":"center","text":[{"text":"XP: ","color":"dark_gray"},{"text":"$(aff_xp)","color":"$(aff_color)"}],"background":0,"shadow":1b,"transformation":{"left_rotation":[0f,0f,0f,1f],"right_rotation":[0f,0f,0f,1f],"translation":[0f,0f,0f],"scale":[0.15f,0.15f,0.15f]}}
