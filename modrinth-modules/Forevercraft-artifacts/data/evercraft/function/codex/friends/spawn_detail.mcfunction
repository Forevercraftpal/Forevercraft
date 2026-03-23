# Codex Friends — Spawn detail view entities (macro)
# Macro args: entry_cid, entry_hearts, next_hearts, level_color, level_name, detail_title_str, target_uuid3_val

# === FRIEND ICON (golden apple as friendship symbol) ===
execute rotated ~ 0 positioned ^0.50 ^2.4 ^1.77 run summon item_display ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_detail"],billboard:"center",item:{id:"golden_apple",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.01f]}}

# === NAME (selector-based, shows online name or blank if offline) ===
$execute rotated ~ 0 positioned ^ ^2.5 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_detail"],billboard:"center",text:{selector:"@a[scores={companion.id=$(entry_cid)},limit=1]",color:"white",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}

# === FRIENDSHIP LEVEL ===
$execute rotated ~ 0 positioned ^-0.1 ^2.3 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_detail"],billboard:"center",text:[{text:"\u2726 ",color:"dark_gray"},{text:"$(level_name)",color:"$(level_color)",bold:true},{text:" \u2726",color:"dark_gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}

# === HEARTS PROGRESS ===
$execute rotated ~ 0 positioned ^-0.1 ^2.13 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_detail"],billboard:"center",text:[{text:"\u2764 ",color:"red"},{text:"$(entry_hearts)",color:"$(level_color)"},{text:" / $(next_hearts)",color:"dark_gray"},{text:" hearts",color:"gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# === FAMILY TITLE ===
$execute rotated ~ 0 positioned ^-0.1 ^1.97 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_detail"],billboard:"center",text:[{text:"Title: ",color:"gray"},{text:"$(detail_title_str)",color:"#E0B0FF"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}

# === ACTION BUTTONS ===

# [Send Gift] button
execute rotated ~ 0 positioned ^0.35 ^1.7 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_detail","ec.fr_gui_gift_txt"],billboard:"center",text:[{text:"[ ",color:"dark_gray"},{text:"Send Gift",color:"green",bold:true},{text:" ]",color:"dark_gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^0.35 ^1.66 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_detail","ec.fr_gui_gift_btn"],width:0.4f,height:0.06f,response:1b}

# [Set Title] button
execute rotated ~ 0 positioned ^-0.15 ^1.7 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_detail","ec.fr_gui_title_txt"],billboard:"center",text:[{text:"[ ",color:"dark_gray"},{text:"Set Title",color:"aqua"},{text:" ]",color:"dark_gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^-0.15 ^1.66 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_detail","ec.fr_gui_title_btn"],width:0.4f,height:0.06f,response:1b}

# [Remove] button
execute rotated ~ 0 positioned ^-0.55 ^1.7 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_detail","ec.fr_gui_remove_txt"],billboard:"center",text:[{text:"[ ",color:"dark_gray"},{text:"Remove",color:"red"},{text:" ]",color:"dark_gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^-0.55 ^1.66 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_detail","ec.fr_gui_remove_btn"],width:0.3f,height:0.06f,response:1b}

# [☆ View Showcase] button
execute rotated ~ 0 positioned ^ ^1.55 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_detail","ec.fr_gui_view_sc_txt"],billboard:"center",text:[{text:"[ ",color:"dark_gray"},{text:"\u2606 View Showcase",color:"gold"},{text:" ]",color:"dark_gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^ ^1.51 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_detail","ec.fr_gui_view_sc_btn"],width:0.55f,height:0.06f,response:1b}

# [Back] button (return to friend list)
execute rotated ~ 0 positioned ^ ^1.35 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_detail","ec.fr_gui_detail_back_txt"],billboard:"center",text:[{text:"[ ",color:"dark_gray"},{text:"Back to List",color:"white"},{text:" ]",color:"dark_gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^ ^1.31 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_detail","ec.fr_gui_detail_back"],width:0.5f,height:0.06f,response:1b}
