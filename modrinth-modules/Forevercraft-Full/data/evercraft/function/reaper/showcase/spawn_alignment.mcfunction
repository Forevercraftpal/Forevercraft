# Reaper — Showcase Alignment Display (macro)
$# $(title) $(infamy) $(renown) $(tier)

# Villain-leaning (negative tier)
$execute if score @s rp.tier matches ..-1 rotated ~ 0 positioned ^ ^1.955 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el"],billboard:"center",text:[{"text":"Alignment: ","color":"gray"},{"text":"$(title)","color":"dark_red","bold":true},{"text":" (","color":"dark_gray"},{"text":"$(infamy)","color":"red"},{"text":")","color":"dark_gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

# Peacemonger-leaning (positive tier)
$execute if score @s rp.tier matches 1.. rotated ~ 0 positioned ^ ^1.955 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el"],billboard:"center",text:[{"text":"Alignment: ","color":"gray"},{"text":"$(title)","color":"green","bold":true},{"text":" (","color":"dark_gray"},{"text":"$(renown)","color":"green"},{"text":")","color":"dark_gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

# Neutral (tier 0)
execute if score @s rp.tier matches 0 rotated ~ 0 positioned ^ ^1.955 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el"],billboard:"center",text:[{"text":"Alignment: ","color":"gray"},{"text":"Neutral","color":"dark_gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
