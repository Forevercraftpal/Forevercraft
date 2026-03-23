# CF Travel Journal — Spawn Overview (interactive)
# Run as player, at player

# Subtitle
execute rotated ~ 0 positioned ^ ^2.72 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Your exploration progress",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

# Top: Lore Discovery
execute rotated ~ 0 positioned ^ ^2.50 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"\u2619 Lore Discovery \u2619",color:"yellow",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^0.0 ^2.38 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Collectible lore fragments",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.44 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.TjClick0"],width:0.55f,height:0.08f,response:1b}

# Row 1: Biomes | Structures
execute rotated ~ 0 positioned ^0.55 ^2.15 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Biomes",color:"dark_green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^0.55 ^2.03 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Discovered biomes",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^0.55 ^2.09 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.TjClick1"],width:0.55f,height:0.08f,response:1b}

execute rotated ~ 0 positioned ^-0.55 ^2.15 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Structures",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^-0.55 ^2.03 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Found structures",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^-0.55 ^2.09 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.TjClick2"],width:0.55f,height:0.08f,response:1b}

# Row 2: Villages | Secrets
execute rotated ~ 0 positioned ^0.55 ^1.80 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Villages",color:"green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^0.55 ^1.68 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Named villages",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^0.55 ^1.74 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.TjClick3"],width:0.55f,height:0.08f,response:1b}

execute rotated ~ 0 positioned ^-0.55 ^1.80 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Secrets",color:"light_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^-0.55 ^1.68 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Hidden discoveries",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^-0.55 ^1.74 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.TjClick4"],width:0.55f,height:0.08f,response:1b}

# Row 3: Bonuses | Affinity
execute rotated ~ 0 positioned ^0.55 ^1.45 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Bonuses",color:"yellow",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^0.55 ^1.33 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Region bonuses",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^0.55 ^1.39 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.TjClick5"],width:0.55f,height:0.08f,response:1b}

execute rotated ~ 0 positioned ^-0.55 ^1.45 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Affinity",color:"#4CAF50",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^-0.55 ^1.33 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Biome attunement",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^-0.55 ^1.39 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.TjClick6"],width:0.55f,height:0.08f,response:1b}

# Info hint
execute rotated ~ 0 positioned ^ ^1.10 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Click a category for details",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
