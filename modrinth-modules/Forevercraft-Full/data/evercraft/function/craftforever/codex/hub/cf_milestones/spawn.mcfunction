# CF Milestones — Spawn Overview (matches FC milestones scheme)
# 8 milestone categories in 2x4 grid with clickable interaction entities
# Run as player, at player

# Subtitle
execute rotated ~ 0 positioned ^ ^2.72 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Track progress & claim rewards",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

# ===== ROW 1 =====

# === Origins (left) ===
execute rotated ~ 0 positioned ^0.55 ^2.50 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Origins",color:"yellow",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^0.55 ^2.38 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.MsOvDesc0"],billboard:"center",text:{text:"- / 10",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^0.55 ^2.44 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.MsOvClick0"],width:0.55f,height:0.08f,response:1b}

# === Social (right) ===
execute rotated ~ 0 positioned ^-0.55 ^2.50 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Social",color:"#FF69B4",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^-0.55 ^2.38 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.MsOvDesc1"],billboard:"center",text:{text:"- / 5",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^-0.55 ^2.44 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.MsOvClick1"],width:0.55f,height:0.08f,response:1b}

# ===== ROW 2 =====

# === Guild (left) ===
execute rotated ~ 0 positioned ^0.55 ^2.15 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Guild",color:"dark_red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^0.55 ^2.03 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.MsOvDesc2"],billboard:"center",text:{text:"- / 5",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^0.55 ^2.09 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.MsOvClick2"],width:0.55f,height:0.08f,response:1b}

# === Adventure (right) ===
execute rotated ~ 0 positioned ^-0.55 ^2.15 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Adventure",color:"dark_aqua",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^-0.55 ^2.03 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.MsOvDesc3"],billboard:"center",text:{text:"- / 4",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^-0.55 ^2.09 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.MsOvClick3"],width:0.55f,height:0.08f,response:1b}

# ===== ROW 3 =====

# === Combat (left) ===
execute rotated ~ 0 positioned ^0.55 ^1.80 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Combat",color:"red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^0.55 ^1.68 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.MsOvDesc4"],billboard:"center",text:{text:"- / 4",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^0.55 ^1.74 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.MsOvClick4"],width:0.55f,height:0.08f,response:1b}

# === Mastery (right) ===
execute rotated ~ 0 positioned ^-0.55 ^1.80 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Mastery",color:"light_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^-0.55 ^1.68 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.MsOvDesc5"],billboard:"center",text:{text:"- / 4",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^-0.55 ^1.74 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.MsOvClick5"],width:0.55f,height:0.08f,response:1b}

# ===== ROW 4 =====

# === Personal (left) ===
execute rotated ~ 0 positioned ^0.55 ^1.45 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Personal",color:"green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^0.55 ^1.33 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.MsOvDesc6"],billboard:"center",text:{text:"100 personal goals",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^0.55 ^1.39 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.MsOvClick6"],width:0.55f,height:0.08f,response:1b}

# === Memories (right) ===
execute rotated ~ 0 positioned ^-0.55 ^1.45 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Memories",color:"#FF8C00",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^-0.55 ^1.33 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.MsOvDesc7"],billboard:"center",text:{text:"Companion memories",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^-0.55 ^1.39 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.MsOvClick7"],width:0.55f,height:0.08f,response:1b}

# Info hint
execute rotated ~ 0 positioned ^ ^1.10 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Click a category to view details",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
