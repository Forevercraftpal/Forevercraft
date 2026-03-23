# Journal Section — Overview (Section 5, Page 1)
# 7 category buttons: Lore Discovery (top), 3 rows x 2 columns
# All entities tagged Adv.MenuElement + Adv.SectionContent + Adv.JnOverview
# Run as the player, at player, facing anchor

# Subtitle
execute rotated ~ 0 positioned ^ ^2.58 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview"],billboard:"center",text:{text:"Your exploration progress",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}

# ===== TOP (centered) — Lore Discovery (replaces Scrapbook) =====

execute rotated ~ 0 positioned ^ ^2.42 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview"],billboard:"center",text:{text:"\u2619 Lore Discovery \u2619",color:"yellow",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^2.32 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvDesc7"],billboard:"center",text:{text:"Collectible lore fragments",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^ ^2.37 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvClick7"],width:0.5f,height:0.07f,response:1b}

# ===== ROW 1 =====

# === Biomes (left) ===
execute rotated ~ 0 positioned ^0.40 ^2.07 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview"],billboard:"center",text:{text:"Biomes",color:"dark_green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^0.40 ^1.97 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvDesc0"],billboard:"center",text:{text:"- / 25 discovered",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^0.40 ^2.02 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvClick0"],width:0.5f,height:0.07f,response:1b}

# === Structures (right) ===
execute rotated ~ 0 positioned ^-0.40 ^2.07 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview"],billboard:"center",text:{text:"Structures",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^-0.40 ^1.97 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvDesc1"],billboard:"center",text:{text:"- / 18 discovered",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^-0.40 ^2.02 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvClick1"],width:0.5f,height:0.07f,response:1b}

# ===== ROW 2 =====

# === Villages (left) ===
execute rotated ~ 0 positioned ^0.40 ^1.79 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview"],billboard:"center",text:{text:"Villages",color:"green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^0.40 ^1.69 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvDesc2"],billboard:"center",text:{text:"- discovered",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^0.40 ^1.74 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvClick2"],width:0.5f,height:0.07f,response:1b}

# === Secrets (right) ===
execute rotated ~ 0 positioned ^-0.40 ^1.79 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview"],billboard:"center",text:{text:"Secrets",color:"light_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^-0.40 ^1.69 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvDesc3"],billboard:"center",text:{text:"- / 5 discovered",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^-0.40 ^1.74 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvClick3"],width:0.5f,height:0.07f,response:1b}

# ===== ROW 3 =====

# === Region Bonuses (left) ===
execute rotated ~ 0 positioned ^0.40 ^1.51 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview"],billboard:"center",text:{text:"Bonuses",color:"yellow",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^0.40 ^1.41 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvDesc4"],billboard:"center",text:{text:"- / 4 complete",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^0.40 ^1.46 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvClick4"],width:0.5f,height:0.07f,response:1b}

# === Affinity (right) ===
execute rotated ~ 0 positioned ^-0.40 ^1.51 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview"],billboard:"center",text:{text:"Affinity",color:"#4CAF50",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^-0.40 ^1.41 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvDesc5"],billboard:"center",text:{text:"- / 25 attuned",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^-0.40 ^1.46 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.JnOverview","Adv.JnOvClick5"],width:0.5f,height:0.07f,response:1b}

# Refresh with current data
function evercraft:codex/hub/journal/refresh_overview
