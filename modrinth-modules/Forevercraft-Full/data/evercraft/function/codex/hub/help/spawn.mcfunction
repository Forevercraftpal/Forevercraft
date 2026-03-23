# Codex Hub — Help Guide — Spawn Topic List
# 20 topics in 2 columns of 10, clickable buttons that output tellraw
# All tagged Adv.MenuElement + Adv.SectionContent + Adv.HelpContent
# Run as the player, facing the menu anchor

# ===== ADMIN [*] BUTTON (top right, small — admin-only command panel) =====
execute rotated ~ 0 positioned ^-1.02 ^2.77 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpAdminBtn"],billboard:"center",text:{text:"*",color:"red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.351f,0.351f,0.351f]}}
execute rotated ~ 0 positioned ^-1.02 ^2.75 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClickAdmin"],width:0.20f,height:0.04f,response:1b}

# ===== DIFFICULTY BUTTON (green diamond, above left column) =====
# Always visible — click shows prompt (if unlockable) or status + timer (if locked)
execute rotated ~ 0 positioned ^1.02 ^2.77 ^2.28 run function evercraft:difficulty/help_button

# ===== LEFT COLUMN (^0.50) =====

# 1. Dream Rate
execute rotated ~ 0 positioned ^0.65 ^2.61 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent"],billboard:"center",text:{text:"\u2726 Dream Rate",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^0.65 ^2.58 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClick1"],width:0.50f,height:0.05f,response:1b}

# 2. Mining Crates
execute rotated ~ 0 positioned ^0.65 ^2.47 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent"],billboard:"center",text:{text:"\u26CF Mining Crates",color:"yellow",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^0.65 ^2.44 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClick2"],width:0.50f,height:0.05f,response:1b}

# 3. Harvesting
execute rotated ~ 0 positioned ^0.65 ^2.33 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent"],billboard:"center",text:{text:"\u2618 Harvesting",color:"green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^0.65 ^2.3 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClick3"],width:0.50f,height:0.05f,response:1b}

# 4. Fishing
execute rotated ~ 0 positioned ^0.65 ^2.19 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent"],billboard:"center",text:{text:"\u2767 Fishing",color:"aqua",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^0.65 ^2.16 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClick4"],width:0.50f,height:0.05f,response:1b}

# 5. Mobs & Patrons
execute rotated ~ 0 positioned ^0.65 ^2.05 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent"],billboard:"center",text:{text:"\u2620 Mobs & Patrons",color:"red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^0.65 ^2.02 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClick5"],width:0.50f,height:0.05f,response:1b}

# 6. Artifacts
execute rotated ~ 0 positioned ^0.65 ^1.91 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent"],billboard:"center",text:{text:"\u2666 Artifacts",color:"light_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^0.65 ^1.88 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClick6"],width:0.50f,height:0.05f,response:1b}

# 7. Mastery
execute rotated ~ 0 positioned ^0.65 ^1.77 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent"],billboard:"center",text:{text:"\u2605 Mastery",color:"dark_aqua",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^0.65 ^1.74 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClick7"],width:0.50f,height:0.05f,response:1b}

# 8. Companions
execute rotated ~ 0 positioned ^0.65 ^1.63 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent"],billboard:"center",text:{text:"\u2764 Companions",color:"yellow",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^0.65 ^1.6 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClick8"],width:0.50f,height:0.05f,response:1b}

# 9. Quests & Bounties
execute rotated ~ 0 positioned ^0.65 ^1.49 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent"],billboard:"center",text:{text:"\u270E Quests & Bounties",color:"green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^0.65 ^1.46 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClick9"],width:0.50f,height:0.05f,response:1b}

# 10. Advantage Trees
execute rotated ~ 0 positioned ^0.65 ^1.35 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent"],billboard:"center",text:{text:"\u2694 Advantage Trees",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^0.65 ^1.32 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClick10"],width:0.50f,height:0.05f,response:1b}

# ===== RIGHT COLUMN (^-0.50) =====

# 11. Classes
execute rotated ~ 0 positioned ^-0.65 ^2.61 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent"],billboard:"center",text:{text:"\u2694 Classes",color:"dark_red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^-0.65 ^2.6 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClick11"],width:0.50f,height:0.03f,response:1b}

# 12. Cooking
execute rotated ~ 0 positioned ^-0.65 ^2.47 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent"],billboard:"center",text:{text:"\u2668 Cooking",color:"yellow",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^-0.65 ^2.44 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClick12"],width:0.50f,height:0.05f,response:1b}

# 13. Housing
execute rotated ~ 0 positioned ^-0.65 ^2.33 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent"],billboard:"center",text:{text:"\u2302 Housing",color:"white",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^-0.65 ^2.3 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClick13"],width:0.50f,height:0.05f,response:1b}

# 14. Dungeons & Bosses
execute rotated ~ 0 positioned ^-0.65 ^2.19 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent"],billboard:"center",text:{text:"\u2620 Dungeons & Bosses",color:"red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^-0.65 ^2.16 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClick14"],width:0.50f,height:0.05f,response:1b}

# 15. Professions
execute rotated ~ 0 positioned ^-0.65 ^2.05 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent"],billboard:"center",text:{text:"\u2692 Professions",color:"dark_green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^-0.65 ^2.02 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClick15"],width:0.50f,height:0.05f,response:1b}

# 16. World & Travel
execute rotated ~ 0 positioned ^-0.65 ^1.91 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent"],billboard:"center",text:{text:"\u2606 World & Travel",color:"dark_aqua",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^-0.65 ^1.88 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClick16"],width:0.50f,height:0.05f,response:1b}

# 17. Glyphforge & Transmute
execute rotated ~ 0 positioned ^-0.65 ^1.77 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent"],billboard:"center",text:{text:"\u2726 Glyphforge & Transmute",color:"dark_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^-0.65 ^1.74 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClick17"],width:0.50f,height:0.05f,response:1b}

# 18. Black Market
execute rotated ~ 0 positioned ^-0.65 ^1.63 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent"],billboard:"center",text:{text:"\u2620 Black Market",color:"dark_gray",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^-0.65 ^1.6 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClick18"],width:0.50f,height:0.05f,response:1b}

# 19. Armor Trim Effects
execute rotated ~ 0 positioned ^-0.65 ^1.49 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent"],billboard:"center",text:{text:"\u2742 Armor Trim Effects",color:"blue",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^-0.65 ^1.46 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClick19"],width:0.50f,height:0.05f,response:1b}

# 20. Satchels & Items
execute rotated ~ 0 positioned ^-0.65 ^1.35 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent"],billboard:"center",text:{text:"\u2726 Satchels & Items",color:"white",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^-0.65 ^1.32 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClick20"],width:0.50f,height:0.05f,response:1b}

# ===== GUI CLEANUP BUTTON (bottom right) =====
execute rotated ~ 0 positioned ^-0.65 ^1.18 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent"],billboard:"center",text:{text:"\u2699 GUI",color:"gray",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^-0.65 ^1.15 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.HelpContent","Adv.HelpClickGUI"],width:0.50f,height:0.05f,response:1b}
