# Milestones Section — Overview (Section 8, Page 1)
# 8 sub-tab buttons in a 2x4 grid
# All entities tagged Adv.MenuElement + Adv.SectionContent + Adv.MsOverview
# Run as the player, at player

# Set page 1 on initial open
scoreboard players set @s adv.gui_page 1

# Subtitle
execute rotated ~ 0 positioned ^ ^2.72 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview"],billboard:"center",text:{text:"Track progress & claim rewards",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

# ===== ROW 1 — Realm Milestones =====

# === Origins (left) ===
execute rotated ~ 0 positioned ^0.55 ^2.50 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview"],billboard:"center",text:{text:"Origins",color:"yellow",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^0.55 ^2.38 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview","Adv.MsOvDesc0"],billboard:"center",text:{text:"- / 10",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^0.55 ^2.44 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview","Adv.MsOvClick0"],width:0.55f,height:0.08f,response:1b}

# === Social (right) ===
execute rotated ~ 0 positioned ^-0.55 ^2.50 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview"],billboard:"center",text:{text:"Social",color:"#FF69B4",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^-0.55 ^2.38 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview","Adv.MsOvDesc1"],billboard:"center",text:{text:"- / 5",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^-0.55 ^2.44 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview","Adv.MsOvClick1"],width:0.55f,height:0.08f,response:1b}

# ===== ROW 2 =====

# === Guild & Warfare (left) ===
execute rotated ~ 0 positioned ^0.55 ^2.15 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview"],billboard:"center",text:{text:"Guild",color:"dark_red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^0.55 ^2.03 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview","Adv.MsOvDesc2"],billboard:"center",text:{text:"- / 5",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^0.55 ^2.09 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview","Adv.MsOvClick2"],width:0.55f,height:0.08f,response:1b}

# === Adventure (right) ===
execute rotated ~ 0 positioned ^-0.55 ^2.15 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview"],billboard:"center",text:{text:"Adventure",color:"dark_aqua",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^-0.55 ^2.03 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview","Adv.MsOvDesc3"],billboard:"center",text:{text:"- / 4",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^-0.55 ^2.09 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview","Adv.MsOvClick3"],width:0.55f,height:0.08f,response:1b}

# ===== ROW 3 =====

# === Combat (left) ===
execute rotated ~ 0 positioned ^0.55 ^1.80 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview"],billboard:"center",text:{text:"Combat",color:"red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^0.55 ^1.68 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview","Adv.MsOvDesc4"],billboard:"center",text:{text:"- / 4",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^0.55 ^1.74 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview","Adv.MsOvClick4"],width:0.55f,height:0.08f,response:1b}

# === Mastery (right) ===
execute rotated ~ 0 positioned ^-0.55 ^1.80 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview"],billboard:"center",text:{text:"Mastery",color:"light_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^-0.55 ^1.68 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview","Adv.MsOvDesc5"],billboard:"center",text:{text:"- / 4",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^-0.55 ^1.74 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview","Adv.MsOvClick5"],width:0.55f,height:0.08f,response:1b}

# ===== ROW 4 — New Categories =====

# === Personal Milestones (left) ===
execute rotated ~ 0 positioned ^0.55 ^1.45 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview"],billboard:"center",text:{text:"Personal",color:"green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^0.55 ^1.33 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview","Adv.MsOvDesc6"],billboard:"center",text:{text:"250 personal goals",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^0.55 ^1.39 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview","Adv.MsOvClick6"],width:0.55f,height:0.08f,response:1b}

# === Memories (right, renamed Scrapbook) ===
execute rotated ~ 0 positioned ^-0.55 ^1.45 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview"],billboard:"center",text:{text:"Memories",color:"#FF8C00",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^-0.55 ^1.33 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview","Adv.MsOvDesc7"],billboard:"center",text:{text:"Companion memories",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^-0.55 ^1.39 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsOverview","Adv.MsOvClick7"],width:0.55f,height:0.08f,response:1b}

# Refresh overview counts
function evercraft:codex/hub/milestones/refresh_overview
