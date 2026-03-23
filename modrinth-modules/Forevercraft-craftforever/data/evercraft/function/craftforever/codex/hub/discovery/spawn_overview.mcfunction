# Discovery Section — Overview with 3 sub-tab buttons
# Matches FC codex milestones overview scheme exactly
# Run as player at player position, page 1

# Subtitle
execute rotated ~ 0 positioned ^ ^2.72 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{"text":"Select a category","color":"gray","italic":true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

# === Almanac (row 1, centered) ===
execute rotated ~ 0 positioned ^ ^2.50 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u26CF ",color:"gold"},{text:"Almanac",color:"#4FC3F7",bold:true},{text:" \u26CF",color:"gold"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^ ^2.38 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Ore node locations",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.44 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.DiscoveryClick1"],width:0.55f,height:0.08f,response:1b}

# === Node Map (row 2, centered) ===
execute rotated ~ 0 positioned ^ ^2.15 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u2606 ",color:"gold"},{text:"Node Map",color:"#26A69A",bold:true},{text:" \u2606",color:"gold"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^ ^2.03 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Biome discovery map",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.09 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.DiscoveryClick2"],width:0.55f,height:0.08f,response:1b}

# === Material Index (row 3, centered) ===
execute rotated ~ 0 positioned ^ ^1.80 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u2666 ",color:"gold"},{text:"Material Index",color:"#78909C",bold:true},{text:" \u2666",color:"gold"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^ ^1.68 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Collected materials & ores",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^1.74 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.DiscoveryClick3"],width:0.55f,height:0.08f,response:1b}
