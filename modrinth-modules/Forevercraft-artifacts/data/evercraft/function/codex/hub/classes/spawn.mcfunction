# Classes Section — Spawn Class List (Level 1)
# 3 columns: Ranged/Def (left), Melee (center), Support (right)
# Each class: text_display (name) + interaction (click) + [?] text_display + [?] interaction
# All tagged Adv.MenuElement + Adv.SectionContent + Adv.ClsPage1
# Run as the player, facing the anchor

# === COLUMN HEADERS (smaller scale to avoid overlap) ===
execute rotated ~ 0 positioned ^1.15 ^2.42 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"\u2726 Ranged / Def \u2726",color:"aqua",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.40f,0.40f,0.40f]}}
execute rotated ~ 0 positioned ^ ^2.42 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"\u2694 Melee \u2694",color:"red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.40f,0.40f,0.40f]}}
execute rotated ~ 0 positioned ^-1.15 ^2.42 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"\u2665 Support \u2665",color:"green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.40f,0.40f,0.40f]}}

# === CENTER COLUMN: MELEE (5 classes) ===

# Rogue (class 1) — row 1
execute rotated ~ 0 positioned ^ ^2.24 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName1"],billboard:"center",text:{text:"Rogue",color:"dark_aqua",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.42f,0.42f,0.42f]}}
execute rotated ~ 0 positioned ^ ^2.20 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick1"],width:0.35f,height:0.06f,response:1b}
execute rotated ~ 0 positioned ^0.48 ^2.24 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute rotated ~ 0 positioned ^ ^2.21 ^2.3 positioned ^0.48 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo1"],width:0.15f,height:0.05f,response:1b}

# Berserker (class 2) — row 2
execute rotated ~ 0 positioned ^ ^2.06 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName2"],billboard:"center",text:{text:"Berserker",color:"dark_red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.42f,0.42f,0.42f]}}
execute rotated ~ 0 positioned ^ ^2.02 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick2"],width:0.35f,height:0.06f,response:1b}
execute rotated ~ 0 positioned ^0.48 ^2.06 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute rotated ~ 0 positioned ^ ^2.03 ^2.3 positioned ^0.48 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo2"],width:0.15f,height:0.05f,response:1b}

# Dancer (class 3) — row 3
execute rotated ~ 0 positioned ^ ^1.88 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName3"],billboard:"center",text:{text:"Dancer",color:"light_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.42f,0.42f,0.42f]}}
execute rotated ~ 0 positioned ^ ^1.84 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick3"],width:0.35f,height:0.06f,response:1b}
execute rotated ~ 0 positioned ^0.48 ^1.88 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute rotated ~ 0 positioned ^ ^1.85 ^2.3 positioned ^0.48 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo3"],width:0.15f,height:0.05f,response:1b}

# Striker (class 4) — row 4
execute rotated ~ 0 positioned ^ ^1.70 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName4"],billboard:"center",text:{text:"Striker",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.42f,0.42f,0.42f]}}
execute rotated ~ 0 positioned ^ ^1.66 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick4"],width:0.35f,height:0.06f,response:1b}
execute rotated ~ 0 positioned ^0.48 ^1.70 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute rotated ~ 0 positioned ^ ^1.67 ^2.3 positioned ^0.48 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo4"],width:0.15f,height:0.05f,response:1b}

# Sentinel (class 5) — row 5
execute rotated ~ 0 positioned ^ ^1.52 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName5"],billboard:"center",text:{text:"Sentinel",color:"gray",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.42f,0.42f,0.42f]}}
execute rotated ~ 0 positioned ^ ^1.48 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick5"],width:0.35f,height:0.06f,response:1b}
execute rotated ~ 0 positioned ^0.48 ^1.52 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute rotated ~ 0 positioned ^ ^1.49 ^2.3 positioned ^0.48 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo5"],width:0.15f,height:0.05f,response:1b}

# === RIGHT COLUMN: SUPPORT (4 classes) ===

# Healer (class 6) — row 1
execute rotated ~ 0 positioned ^-1.15 ^2.24 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName6"],billboard:"center",text:{text:"Healer",color:"green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.42f,0.42f,0.42f]}}
execute rotated ~ 0 positioned ^ ^2.20 ^2.3 positioned ^-1.15 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick6"],width:0.35f,height:0.06f,response:1b}
execute rotated ~ 0 positioned ^-0.72 ^2.24 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute rotated ~ 0 positioned ^ ^2.21 ^2.3 positioned ^-0.72 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo6"],width:0.15f,height:0.05f,response:1b}

# Beastlord (class 7) — row 2
execute rotated ~ 0 positioned ^-1.15 ^2.06 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName7"],billboard:"center",text:{text:"Beastlord",color:"yellow",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.42f,0.42f,0.42f]}}
execute rotated ~ 0 positioned ^ ^2.02 ^2.3 positioned ^-1.15 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick7"],width:0.35f,height:0.06f,response:1b}
execute rotated ~ 0 positioned ^-0.72 ^2.06 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute rotated ~ 0 positioned ^ ^2.03 ^2.3 positioned ^-0.72 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo7"],width:0.15f,height:0.05f,response:1b}

# Javelin (class 8) — row 3
execute rotated ~ 0 positioned ^-1.15 ^1.88 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName8"],billboard:"center",text:{text:"Javelin",color:"aqua",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.42f,0.42f,0.42f]}}
execute rotated ~ 0 positioned ^ ^1.84 ^2.3 positioned ^-1.15 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick8"],width:0.35f,height:0.06f,response:1b}
execute rotated ~ 0 positioned ^-0.72 ^1.88 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute rotated ~ 0 positioned ^ ^1.85 ^2.3 positioned ^-0.72 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo8"],width:0.15f,height:0.05f,response:1b}

# Hoplite (class 9) — row 4
execute rotated ~ 0 positioned ^-1.15 ^1.70 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName9"],billboard:"center",text:{text:"Hoplite",color:"blue",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.42f,0.42f,0.42f]}}
execute rotated ~ 0 positioned ^ ^1.66 ^2.3 positioned ^-1.15 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick9"],width:0.35f,height:0.06f,response:1b}
execute rotated ~ 0 positioned ^-0.72 ^1.70 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute rotated ~ 0 positioned ^ ^1.67 ^2.3 positioned ^-0.72 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo9"],width:0.15f,height:0.05f,response:1b}

# === LEFT COLUMN: RANGED / DEF (4 classes) ===

# Archer (class 10) — row 1
execute rotated ~ 0 positioned ^1.15 ^2.24 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName10"],billboard:"center",text:{text:"Archer",color:"red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.42f,0.42f,0.42f]}}
execute rotated ~ 0 positioned ^ ^2.20 ^2.3 positioned ^1.15 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick10"],width:0.35f,height:0.06f,response:1b}
execute rotated ~ 0 positioned ^1.58 ^2.24 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute rotated ~ 0 positioned ^ ^2.21 ^2.3 positioned ^1.58 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo10"],width:0.15f,height:0.05f,response:1b}

# Hunter (class 11) — row 2
execute rotated ~ 0 positioned ^1.15 ^2.06 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName11"],billboard:"center",text:{text:"Hunter",color:"dark_green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.42f,0.42f,0.42f]}}
execute rotated ~ 0 positioned ^ ^2.02 ^2.3 positioned ^1.15 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick11"],width:0.35f,height:0.06f,response:1b}
execute rotated ~ 0 positioned ^1.58 ^2.06 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute rotated ~ 0 positioned ^ ^2.03 ^2.3 positioned ^1.58 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo11"],width:0.15f,height:0.05f,response:1b}

# Tank (class 12) — row 3
execute rotated ~ 0 positioned ^1.15 ^1.88 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName12"],billboard:"center",text:{text:"Tank",color:"white",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.42f,0.42f,0.42f]}}
execute rotated ~ 0 positioned ^ ^1.84 ^2.3 positioned ^1.15 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick12"],width:0.35f,height:0.06f,response:1b}
execute rotated ~ 0 positioned ^1.58 ^1.88 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute rotated ~ 0 positioned ^ ^1.85 ^2.3 positioned ^1.58 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo12"],width:0.15f,height:0.05f,response:1b}

# Knight (class 13) — row 4
execute rotated ~ 0 positioned ^1.15 ^1.70 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsName13"],billboard:"center",text:{text:"Knight",color:"dark_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.42f,0.42f,0.42f]}}
execute rotated ~ 0 positioned ^ ^1.66 ^2.3 positioned ^1.15 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsClick13"],width:0.35f,height:0.06f,response:1b}
execute rotated ~ 0 positioned ^1.58 ^1.70 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute rotated ~ 0 positioned ^ ^1.67 ^2.3 positioned ^1.58 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage1","Adv.ClsInfo13"],width:0.15f,height:0.05f,response:1b}
