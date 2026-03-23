# Craftforever Codex — Spawn Hub Buttons
# 2-column layout + 2 featured bottom buttons
# All tagged CF.MenuElement + CF.HubContent

# ===== LEFT COLUMN =====

# === Recipes (Cookbook + Recipe Book) ===
execute rotated ~ 0 positioned ^0.72 ^2.50 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.HubContent","CF.HubBtn1"],billboard:"center",text:[{text:"\u2692 ",color:"gold"},{text:"Recipes",color:"#FFB74D",bold:true},{text:" \u2692",color:"gold"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.513f,0.513f,0.513f]}}
execute rotated ~ 0 positioned ^0.72 ^2.39 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.HubContent"],billboard:"center",text:{text:"Cooking & forging recipes",color:"gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute rotated ~ 0 positioned ^0.72 ^2.45 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.HubContent","CF.HubClick1"],width:0.6f,height:0.07f,response:1b}

# === Housing (Housing Guide + Trophy Gallery + Laborers) ===
execute rotated ~ 0 positioned ^0.72 ^2.05 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.HubContent","CF.HubBtn2"],billboard:"center",text:[{text:"\u2302 ",color:"gold"},{text:"Housing",color:"#66BB6A",bold:true},{text:" \u2302",color:"gold"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.513f,0.513f,0.513f]}}
execute rotated ~ 0 positioned ^0.72 ^1.94 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.HubContent"],billboard:"center",text:{text:"Home, trophies & laborers",color:"gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute rotated ~ 0 positioned ^0.72 ^2.00 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.HubContent","CF.HubClick2"],width:0.6f,height:0.07f,response:1b}

# === Discovery (Almanac + Node Map + Material Index) ===
execute rotated ~ 0 positioned ^0.72 ^1.60 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.HubContent","CF.HubBtn3"],billboard:"center",text:[{text:"\u26CF ",color:"gold"},{text:"Discovery",color:"#4FC3F7",bold:true},{text:" \u26CF",color:"gold"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.513f,0.513f,0.513f]}}
execute rotated ~ 0 positioned ^0.72 ^1.49 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.HubContent"],billboard:"center",text:{text:"Almanac, nodes & materials",color:"gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute rotated ~ 0 positioned ^0.72 ^1.57 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.HubContent","CF.HubClick3"],width:0.6f,height:0.07f,response:1b}

# ===== RIGHT COLUMN =====

# === Travel Journal ===
execute rotated ~ 0 positioned ^-0.72 ^2.50 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.HubContent","CF.HubBtn4"],billboard:"center",text:[{text:"\u2605 ",color:"gold"},{text:"Travel Journal",color:"dark_aqua",bold:true},{text:" \u2605",color:"gold"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.513f,0.513f,0.513f]}}
execute rotated ~ 0 positioned ^-0.72 ^2.39 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.HubContent"],billboard:"center",text:{text:"Exploration progress",color:"gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute rotated ~ 0 positioned ^-0.72 ^2.45 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.HubContent","CF.HubClick4"],width:0.6f,height:0.07f,response:1b}

# === Cosmetics ===
execute rotated ~ 0 positioned ^-0.72 ^2.05 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.HubContent","CF.HubBtn5"],billboard:"center",text:[{text:"\u273F ",color:"gold"},{text:"Cosmetics",color:"aqua",bold:true},{text:" \u273F",color:"gold"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.513f,0.513f,0.513f]}}
execute rotated ~ 0 positioned ^-0.72 ^1.94 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.HubContent"],billboard:"center",text:{text:"Particles, trails & titles",color:"gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute rotated ~ 0 positioned ^-0.72 ^2.00 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.HubContent","CF.HubClick5"],width:0.6f,height:0.07f,response:1b}

# === Crafting Classes (right column, row 3) ===
execute rotated ~ 0 positioned ^-0.72 ^1.60 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.HubContent","CF.HubBtn6"],billboard:"center",text:[{text:"\u2699 ",color:"gold"},{text:"Crafting Classes",color:"#8BC34A",bold:true},{text:" \u2699",color:"gold"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.513f,0.513f,0.513f]}}
execute rotated ~ 0 positioned ^-0.72 ^1.49 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.HubContent"],billboard:"center",text:{text:"Spirit tool specializations",color:"gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute rotated ~ 0 positioned ^-0.72 ^1.57 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.HubContent","CF.HubClick6"],width:0.6f,height:0.07f,response:1b}

# ===== FEATURED BOTTOM: MILESTONES =====

execute rotated ~ 0 positioned ^0.0 ^1.22 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.HubContent","CF.HubBtn7"],billboard:"center",text:[{text:"\u2726 ",color:"gold"},{text:"Milestones",color:"#E0B0FF",bold:true},{text:" \u2726",color:"gold"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.567f,0.567f,0.567f]}}
execute rotated ~ 0 positioned ^0.0 ^1.11 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.HubContent"],billboard:"center",text:{text:"Track progress & claim rewards",color:"gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute rotated ~ 0 positioned ^0.0 ^1.17 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.HubContent","CF.HubClick7"],width:0.8f,height:0.07f,response:1b}
