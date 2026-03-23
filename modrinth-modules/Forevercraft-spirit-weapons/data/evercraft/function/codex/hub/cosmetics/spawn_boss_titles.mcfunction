# Cosmetics Section — Page 3: Boss Titles
# 2-column layout: 6 bosses left, 5 bosses right + champion centered
# All entities tagged Adv.MenuElement + Adv.SectionContent + Adv.CosmPage
# Run as the player, at player, facing the anchor

# === LEFT COLUMN (^0.60) — Bosses 1-6 ===

# Boss 1: Hollow King
execute rotated ~ 0 positioned ^0.6 ^2.52 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BT0"],billboard:"center",text:{text:"Hollow King  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.49 ^2.3 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BTClick0"],width:0.55f,height:0.05f,response:1b}

# Boss 2: Verdant Warden
execute rotated ~ 0 positioned ^0.6 ^2.38 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BT1"],billboard:"center",text:{text:"Verdant Warden  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.35 ^2.3 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BTClick1"],width:0.55f,height:0.05f,response:1b}

# Boss 3: Stormforged
execute rotated ~ 0 positioned ^0.6 ^2.24 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BT2"],billboard:"center",text:{text:"Stormforged  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.21 ^2.3 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BTClick2"],width:0.55f,height:0.05f,response:1b}

# Boss 4: Tidecaller
execute rotated ~ 0 positioned ^0.6 ^2.1 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BT3"],billboard:"center",text:{text:"Tidecaller  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.07 ^2.3 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BTClick3"],width:0.55f,height:0.05f,response:1b}

# Boss 5: Earthshaker
execute rotated ~ 0 positioned ^0.6 ^1.96 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BT4"],billboard:"center",text:{text:"Earthshaker  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^1.93 ^2.3 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BTClick4"],width:0.55f,height:0.05f,response:1b}

# Boss 6: Nightmare
execute rotated ~ 0 positioned ^0.6 ^1.82 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BT5"],billboard:"center",text:{text:"Nightmare  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^1.79 ^2.3 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BTClick5"],width:0.55f,height:0.05f,response:1b}

# === RIGHT COLUMN (^-0.60) — Bosses 7-11 ===

# Boss 7: Infernal Titan
execute rotated ~ 0 positioned ^-0.6 ^2.52 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BT6"],billboard:"center",text:{text:"Infernal Titan  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.49 ^2.3 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BTClick6"],width:0.55f,height:0.05f,response:1b}

# Boss 8: Soul Warden
execute rotated ~ 0 positioned ^-0.6 ^2.38 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BT7"],billboard:"center",text:{text:"Soul Warden  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.35 ^2.3 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BTClick7"],width:0.55f,height:0.05f,response:1b}

# Boss 9: Crimson Behemoth
execute rotated ~ 0 positioned ^-0.6 ^2.24 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BT8"],billboard:"center",text:{text:"Crimson Behemoth  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.21 ^2.3 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BTClick8"],width:0.55f,height:0.05f,response:1b}

# Boss 10: Void Sovereign
execute rotated ~ 0 positioned ^-0.6 ^2.1 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BT9"],billboard:"center",text:{text:"Void Sovereign  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.07 ^2.3 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BTClick9"],width:0.55f,height:0.05f,response:1b}

# Boss 11: Ender Architect
execute rotated ~ 0 positioned ^-0.6 ^1.96 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BT10"],billboard:"center",text:{text:"Ender Architect  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^1.93 ^2.3 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BTClick10"],width:0.55f,height:0.05f,response:1b}

# === DIVIDER ===
execute rotated ~ 0 positioned ^ ^1.68 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage"],billboard:"center",text:{text:"\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# === WORLD BOSS CHAMPION (centered) ===
execute rotated ~ 0 positioned ^ ^1.54 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BTChamp"],billboard:"center",text:{text:"World Boss Champion  [Locked]",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^ ^1.5 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage","Adv.BTChampClick"],width:0.65f,height:0.06f,response:1b}

# Subtitle: how to earn
execute rotated ~ 0 positioned ^ ^1.4 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.CosmPage"],billboard:"center",text:{text:"Defeat all 11 World Bosses to earn Champion",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.189f,0.189f,0.189f]}}

# Refresh displays with current data
function evercraft:advantage/gui/refresh_boss_titles
