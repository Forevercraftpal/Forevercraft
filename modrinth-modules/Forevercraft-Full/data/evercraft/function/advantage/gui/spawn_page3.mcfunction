# Page 3: Prestige Abilities + Synergies
# 2-column layout matching challenges page: 6 left, 6 right, 1 centered
# All entities tagged Adv.Page3 + Adv.MenuElement
# Display-only page (no click interactions needed)

# === PRESTIGE ABILITIES SECTION ===
# Section header
execute rotated ~ 0 positioned ^ ^2.68 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3"],billboard:"center",text:{text:"Prestige Abilities",color:"light_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}

# 2-column grid: LEFT column ^0.60, RIGHT column ^-0.60
# Row positions: 1.76, 1.62, 1.48, 1.34, 1.20, 1.06 (6 rows, spacing 0.14)
# Beastmaster centered at 0.92 (7th row, no column offset)
# Scale 0.24 to match challenges page

# === LEFT COLUMN (^0.60) — Abilities 0-5 ===

# Agility — Row 1 Left
execute rotated ~ 0 positioned ^0.6 ^2.56 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Abil0"],billboard:"center",text:{text:"Agility: ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}

# Dexterity — Row 2 Left
execute rotated ~ 0 positioned ^0.6 ^2.42 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Abil1"],billboard:"center",text:{text:"Dexterity: ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}

# Evasion — Row 3 Left
execute rotated ~ 0 positioned ^0.6 ^2.28 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Abil2"],billboard:"center",text:{text:"Evasion: ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}

# Stealth — Row 4 Left
execute rotated ~ 0 positioned ^0.6 ^2.14 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Abil3"],billboard:"center",text:{text:"Stealth: ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}

# Vitality — Row 5 Left
execute rotated ~ 0 positioned ^0.6 ^2 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Abil4"],billboard:"center",text:{text:"Vitality: ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}

# Taskmaster — Row 6 Left
execute rotated ~ 0 positioned ^0.6 ^1.86 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Abil5"],billboard:"center",text:{text:"Taskmaster: ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}

# Beastmaster — Row 7 Centered (only entry in this row)
execute rotated ~ 0 positioned ^ ^1.72 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Abil6"],billboard:"center",text:{text:"Beastmaster: ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}

# === RIGHT COLUMN (^-0.60) — Abilities 7-12 ===

# Victorian — Row 1 Right
execute rotated ~ 0 positioned ^-0.6 ^2.56 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Abil7"],billboard:"center",text:{text:"Victorian: ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}

# Fishing — Row 2 Right
execute rotated ~ 0 positioned ^-0.6 ^2.42 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Abil8"],billboard:"center",text:{text:"Fishing: ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}

# Mining — Row 3 Right
execute rotated ~ 0 positioned ^-0.6 ^2.28 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Abil9"],billboard:"center",text:{text:"Mining: ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}

# Gathering — Row 4 Right
execute rotated ~ 0 positioned ^-0.6 ^2.14 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Abil10"],billboard:"center",text:{text:"Gathering: ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}

# Blacksmith — Row 5 Right
execute rotated ~ 0 positioned ^-0.6 ^2 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Abil11"],billboard:"center",text:{text:"Blacksmith: ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}

# Explorer — Row 6 Right
execute rotated ~ 0 positioned ^-0.6 ^1.86 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Abil12"],billboard:"center",text:{text:"Explorer: ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}

# === [?] INFO BUTTON — centered below header, opens chat class selector ===
execute rotated ~ 0 positioned ^ ^2.56 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.AbilInfo"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^ ^2.52 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page3","Adv.PrestigeInfoClick"],width:0.15f,height:0.06f,response:1b}

# === DIVIDER ===
execute rotated ~ 0 positioned ^ ^1.58 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3"],billboard:"center",text:{text:"--- Synergies ---",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}

# === SYNERGIES SECTION ===
# 3-column layout: synergy name (left ^0.65) + requirement (center) + status (right ^-0.70)
# 4 rows, scale 0.22, spacing 0.10
# Positions: 0.66, 0.56, 0.46, 0.36

# Battle Trance — name left, status right
execute rotated ~ 0 positioned ^0.65 ^1.46 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Syn0"],billboard:"center",text:{text:"Battle Trance",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^ ^1.46 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Syn0Req"],billboard:"center",text:{text:"Evasion+Victorian 15",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^-0.7 ^1.46 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Syn0Status"],billboard:"center",text:{text:"LOCKED",color:"dark_gray",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Resource Master — name left, status right
execute rotated ~ 0 positioned ^0.65 ^1.36 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Syn1"],billboard:"center",text:{text:"Resource Master",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^ ^1.36 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Syn1Req"],billboard:"center",text:{text:"Fish+Mine+Gather 15",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^-0.7 ^1.36 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Syn1Status"],billboard:"center",text:{text:"LOCKED",color:"dark_gray",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Shadow Step — name left, status right
execute rotated ~ 0 positioned ^0.65 ^1.26 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Syn2"],billboard:"center",text:{text:"Shadow Step",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^ ^1.26 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Syn2Req"],billboard:"center",text:{text:"Agility+Stealth 20",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^-0.7 ^1.26 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Syn2Status"],billboard:"center",text:{text:"LOCKED",color:"dark_gray",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Pack Leader — name left, status right
execute rotated ~ 0 positioned ^0.65 ^1.16 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Syn3"],billboard:"center",text:{text:"Pack Leader",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^ ^1.16 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Syn3Req"],billboard:"center",text:{text:"Task+Beast 20",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^-0.7 ^1.16 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page3","Adv.Syn3Status"],billboard:"center",text:{text:"LOCKED",color:"dark_gray",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Refresh ability and synergy displays with current data
function evercraft:advantage/gui/refresh_abilities
function evercraft:advantage/gui/refresh_synergies
