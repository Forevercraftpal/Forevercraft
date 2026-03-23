# Codex Classes - Striker Artifact List
# Spawns subtitle + 14 artifact text_displays and interaction entities (7 left, 7 right)
# Called as player, at player, facing the anchor

# Subtitle
execute rotated ~ 0 positioned ^ ^2.29 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2"],billboard:"center",text:[{text:"Striker",color:"gold",bold:true},{text:" Artifacts",color:"gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}

# --- Left Column (Slots 0-6) ---

# Slot 0: highland_mace (text Y=1.72, interaction Y=1.66)
execute rotated ~ 0 positioned ^0.45 ^2.17 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_highland_mace"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^2.19 ^2.28 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick0"],width:0.5f,height:0.05f,response:1b}

# Slot 1: plunger (text Y=1.60, interaction Y=1.54)
execute rotated ~ 0 positioned ^0.45 ^2.03 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_plunger"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^2.05 ^2.28 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick1"],width:0.5f,height:0.05f,response:1b}

# Slot 2: frying_pan (text Y=1.48, interaction Y=1.42)
execute rotated ~ 0 positioned ^0.45 ^1.89 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_frying_pan"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.91 ^2.28 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick2"],width:0.5f,height:0.05f,response:1b}

# Slot 3: combat_mace (text Y=1.36, interaction Y=1.30)
execute rotated ~ 0 positioned ^0.45 ^1.75 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_combat_mace"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.77 ^2.28 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick3"],width:0.5f,height:0.05f,response:1b}

# Slot 4: hammer_of_gravity (text Y=1.24, interaction Y=1.18)
execute rotated ~ 0 positioned ^0.45 ^1.61 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_hammer_of_gravity"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.63 ^2.28 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick4"],width:0.5f,height:0.05f,response:1b}

# Slot 5: mjolnir (text Y=1.12, interaction Y=1.06)
execute rotated ~ 0 positioned ^0.45 ^1.47 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_mjolnir"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.49 ^2.28 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick5"],width:0.5f,height:0.05f,response:1b}

# Slot 6: pwnhammer (text Y=1.00, interaction Y=0.94)
execute rotated ~ 0 positioned ^0.45 ^1.33 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_pwnhammer"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.35 ^2.28 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick6"],width:0.5f,height:0.05f,response:1b}

# --- Right Column (Slots 7-13) ---

# Slot 7: dev_hammer (text Y=1.72, interaction Y=1.66)
execute rotated ~ 0 positioned ^-0.45 ^2.17 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_dev_hammer"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^2.19 ^2.28 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick7"],width:0.5f,height:0.05f,response:1b}

# Slot 8: dragonheart_mace (text Y=1.60, interaction Y=1.54)
execute rotated ~ 0 positioned ^-0.45 ^2.03 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_dragonheart_mace"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^2.05 ^2.28 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick8"],width:0.5f,height:0.05f,response:1b}

# Slot 9: mace_of_legends (text Y=1.48, interaction Y=1.42)
execute rotated ~ 0 positioned ^-0.45 ^1.89 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_mace_of_legends"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.91 ^2.28 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick9"],width:0.5f,height:0.05f,response:1b}

# Slot 10: stormlander (text Y=1.36, interaction Y=1.30)
execute rotated ~ 0 positioned ^-0.45 ^1.75 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_stormlander"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.77 ^2.28 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick10"],width:0.5f,height:0.05f,response:1b}

# Slot 11: portal_staff (text Y=1.24, interaction Y=1.18)
execute rotated ~ 0 positioned ^-0.45 ^1.61 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_portal_staff"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.63 ^2.28 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick11"],width:0.5f,height:0.05f,response:1b}

# Slot 12: void_voyage (text Y=1.12, interaction Y=1.06)
execute rotated ~ 0 positioned ^-0.45 ^1.47 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_void_voyage"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.49 ^2.28 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick12"],width:0.5f,height:0.05f,response:1b}

# Slot 13: infernal_sword / Comet on a Stick (text Y=1.00, interaction Y=0.94)
execute rotated ~ 0 positioned ^-0.45 ^1.33 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_infernal_sword"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.35 ^2.28 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick13"],width:0.5f,height:0.05f,response:1b}

# Refresh artifact display states
function evercraft:codex/hub/classes/refresh/striker
