# Artifact Collection — Tier Picker (Level 1)
# Constellations on top, 6 tier buttons in 2x3 grid, Random Browse at bottom
# All tagged Adv.MenuElement + Adv.SectionContent + Adv.ArtTiers
# Run as the player, at player, facing anchor

# === Constellations Button (centered, top) ===
execute rotated ~ 0 positioned ^ ^2.53 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers"],billboard:"center",text:{text:"\u2605 Constellations \u2605",color:"gold",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^2.43 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtConstBtnDesc"],billboard:"center",text:{text:"... / 10 complete",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^ ^2.48 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtConstClick"],width:0.6f,height:0.07f,response:1b}

# === ROW 1 ===
# Common (tier 1) — LEFT
execute rotated ~ 0 positioned ^0.45 ^2.21 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers"],billboard:"center",text:{text:"Common",color:"white",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^0.45 ^2.11 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrDesc0"],billboard:"center",text:{text:"... / 23",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^ ^2.16 ^2.3 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrClick0"],width:0.5f,height:0.07f,response:1b}

# Uncommon (tier 2) — RIGHT
execute rotated ~ 0 positioned ^-0.45 ^2.21 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers"],billboard:"center",text:{text:"Uncommon",color:"dark_blue",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^-0.45 ^2.11 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrDesc1"],billboard:"center",text:{text:"... / 23",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^ ^2.16 ^2.3 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrClick1"],width:0.5f,height:0.07f,response:1b}

# === ROW 2 ===
# Rare (tier 3) — LEFT
execute rotated ~ 0 positioned ^0.45 ^1.89 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers"],billboard:"center",text:{text:"Rare",color:"aqua",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^0.45 ^1.79 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrDesc2"],billboard:"center",text:{text:"... / 31",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^ ^1.84 ^2.3 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrClick2"],width:0.5f,height:0.07f,response:1b}

# Ornate (tier 4) — RIGHT
execute rotated ~ 0 positioned ^-0.45 ^1.89 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers"],billboard:"center",text:{text:"Ornate",color:"dark_purple",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^-0.45 ^1.79 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrDesc3"],billboard:"center",text:{text:"... / 109",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^ ^1.84 ^2.3 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrClick3"],width:0.5f,height:0.07f,response:1b}

# === ROW 3 ===
# Exquisite (tier 5) — LEFT
execute rotated ~ 0 positioned ^0.45 ^1.57 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers"],billboard:"center",text:{text:"Exquisite",color:"light_purple",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^0.45 ^1.47 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrDesc4"],billboard:"center",text:{text:"... / 60",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^ ^1.52 ^2.3 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrClick4"],width:0.5f,height:0.07f,response:1b}

# Mythical (tier 6) — RIGHT
execute rotated ~ 0 positioned ^-0.45 ^1.57 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers"],billboard:"center",text:{text:"Mythical",color:"gold",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^-0.45 ^1.47 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrDesc5"],billboard:"center",text:{text:"... / 77",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute rotated ~ 0 positioned ^ ^1.52 ^2.3 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtTrClick5"],width:0.5f,height:0.07f,response:1b}

# === Random Browse Button (centered, below grid) ===
execute rotated ~ 0 positioned ^ ^1.23 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers"],billboard:"center",text:{text:"\u2727 Random Browse \u2727",color:"light_purple",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^ ^1.19 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtTiers","Adv.ArtRandomClick"],width:0.5f,height:0.06f,response:1b}

# Refresh with current discovery counts
function evercraft:codex/hub/artifacts/refresh_tiers
