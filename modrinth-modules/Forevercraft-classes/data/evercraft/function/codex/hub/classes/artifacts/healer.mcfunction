# Codex Classes - Healer Artifact List
# Spawns subtitle + 12 artifact text_displays and interaction entities (6 left, 6 right)
# Called as player, at player, facing the anchor

# Subtitle
execute rotated ~ 0 positioned ^ ^2.29 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2"],billboard:"center",text:[{text:"Healer",color:"green",bold:true},{text:" Artifacts",color:"gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}

# --- Left Column (Slots 0-5) ---

# Slot 0: healer_bandages (text Y=1.72, interaction Y=1.66)
execute rotated ~ 0 positioned ^0.45 ^2.17 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_healer_bandages"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^2.19 ^2.28 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick0"],width:0.5f,height:0.05f,response:1b}

# Slot 1: healer_poultice (text Y=1.60, interaction Y=1.54)
execute rotated ~ 0 positioned ^0.45 ^2.03 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_healer_poultice"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^2.05 ^2.28 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick1"],width:0.5f,height:0.05f,response:1b}

# Slot 2: healer_salts (text Y=1.48, interaction Y=1.42)
execute rotated ~ 0 positioned ^0.45 ^1.89 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_healer_salts"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.91 ^2.28 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick2"],width:0.5f,height:0.05f,response:1b}

# Slot 3: healer_balm (text Y=1.36, interaction Y=1.30)
execute rotated ~ 0 positioned ^0.45 ^1.75 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_healer_balm"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.77 ^2.28 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick3"],width:0.5f,height:0.05f,response:1b}

# Slot 4: healer_chalice (text Y=1.24, interaction Y=1.18)
execute rotated ~ 0 positioned ^0.45 ^1.61 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_healer_chalice"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.63 ^2.28 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick4"],width:0.5f,height:0.05f,response:1b}

# Slot 5: healer_incense (text Y=1.12, interaction Y=1.06)
execute rotated ~ 0 positioned ^0.45 ^1.47 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_healer_incense"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.49 ^2.28 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick5"],width:0.5f,height:0.05f,response:1b}

# --- Right Column (Slots 6-11) ---

# Slot 6: healer_plume (text Y=1.72, interaction Y=1.66)
execute rotated ~ 0 positioned ^-0.45 ^2.17 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_healer_plume"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^2.19 ^2.28 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick6"],width:0.5f,height:0.05f,response:1b}

# Slot 7: healer_censer (text Y=1.60, interaction Y=1.54)
execute rotated ~ 0 positioned ^-0.45 ^2.03 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_healer_censer"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^2.05 ^2.28 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick7"],width:0.5f,height:0.05f,response:1b}

# Slot 8: healer_lotus (text Y=1.48, interaction Y=1.42)
execute rotated ~ 0 positioned ^-0.45 ^1.89 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_healer_lotus"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.91 ^2.28 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick8"],width:0.5f,height:0.05f,response:1b}

# Slot 9: healer_tome (text Y=1.36, interaction Y=1.30)
execute rotated ~ 0 positioned ^-0.45 ^1.75 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_healer_tome"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.77 ^2.28 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick9"],width:0.5f,height:0.05f,response:1b}

# Slot 10: healer_ambrosia (text Y=1.24, interaction Y=1.18)
execute rotated ~ 0 positioned ^-0.45 ^1.61 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_healer_ambrosia"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.63 ^2.28 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick10"],width:0.5f,height:0.05f,response:1b}

# Slot 11: healer_tears (text Y=1.12, interaction Y=1.06)
execute rotated ~ 0 positioned ^-0.45 ^1.47 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_healer_tears"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.49 ^2.28 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick11"],width:0.5f,height:0.05f,response:1b}

# Refresh artifact display states
function evercraft:codex/hub/classes/refresh/healer
