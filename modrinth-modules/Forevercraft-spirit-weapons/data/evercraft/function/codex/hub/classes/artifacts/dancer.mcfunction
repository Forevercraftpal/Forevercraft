# Codex Classes - Dancer Artifact List
# Spawns subtitle + 7 artifact text_displays and interaction entities (4 left, 3 right)
# Called as player, at player, facing the anchor

# Subtitle
execute rotated ~ 0 positioned ^ ^2.29 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2"],billboard:"center",text:[{text:"Dancer",color:"light_purple",bold:true},{text:" Artifacts",color:"gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}

# --- Left Column (Slots 0-3) ---

# Slot 0: mauler (text Y=1.72, interaction Y=1.66)
execute rotated ~ 0 positioned ^0.45 ^2.17 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_mauler"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^2.19 ^2.28 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick0"],width:0.5f,height:0.05f,response:1b}

# Slot 1: dust_storm (text Y=1.60, interaction Y=1.54)
execute rotated ~ 0 positioned ^0.45 ^2.03 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_dust_storm"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^2.05 ^2.28 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick1"],width:0.5f,height:0.05f,response:1b}

# Slot 2: plate_knuckle (text Y=1.48, interaction Y=1.42)
execute rotated ~ 0 positioned ^0.45 ^1.89 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_plate_knuckle"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.91 ^2.28 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick2"],width:0.5f,height:0.05f,response:1b}

# Slot 3: golden_gauntlet (text Y=1.36, interaction Y=1.30)
execute rotated ~ 0 positioned ^0.45 ^1.75 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_golden_gauntlet"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.77 ^2.28 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick3"],width:0.5f,height:0.05f,response:1b}

# --- Right Column (Slots 4-6) ---

# Slot 4: order_of_the_stone_gauntlet (text Y=1.72, interaction Y=1.66)
execute rotated ~ 0 positioned ^-0.45 ^2.17 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_order_of_the_stone_gauntlet"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^2.19 ^2.28 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick4"],width:0.5f,height:0.05f,response:1b}

# Slot 5: prismarine_gauntlet (text Y=1.60, interaction Y=1.54)
execute rotated ~ 0 positioned ^-0.45 ^2.03 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_prismarine_gauntlet"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^2.05 ^2.28 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick5"],width:0.5f,height:0.05f,response:1b}

# Slot 6: red_gauntlet (text Y=1.48, interaction Y=1.42)
execute rotated ~ 0 positioned ^-0.45 ^1.89 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_red_gauntlet"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.91 ^2.28 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick6"],width:0.5f,height:0.05f,response:1b}

# Refresh artifact display states
function evercraft:codex/hub/classes/refresh/dancer
