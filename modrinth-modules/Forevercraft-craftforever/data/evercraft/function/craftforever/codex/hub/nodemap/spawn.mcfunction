# Craftforever Codex — Node Map Section
# Text-based map showing which biomes have been discovered
# Clickable dimension headers show detailed breakdown in chat
# Run as player at player position

# Hint text
execute rotated ~ 0 positioned ^ ^2.78 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25b6 ",color:"dark_gray"},{text:"Click a region for details",color:"dark_gray",italic:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# === OVERWORLD ===
# Header (clickable)
execute rotated ~ 0 positioned ^ ^2.60 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25b6 ",color:"#8BC34A"},{text:"Overworld","color":"white","bold":true},{text:" \u25c0","color":"#8BC34A"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^2.60 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.MapOWClick"],width:0.8f,height:0.08f,response:1b}

# Overworld biome grid
execute rotated ~ 0 positioned ^ ^2.30 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,line_width:300,Tags:["CF.MenuElement","CF.SectionContent","CF.MapOverworld"],billboard:"center",text:{text:"Loading...",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}

# === NETHER ===
# Header (clickable)
execute rotated ~ 0 positioned ^ ^1.88 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25b6 ",color:"#EF4444"},{text:"Nether","color":"#EF4444","bold":true},{text:" \u25c0","color":"#EF4444"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.88 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.MapNetherClick"],width:0.6f,height:0.08f,response:1b}

# Nether entries
execute rotated ~ 0 positioned ^ ^1.72 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,line_width:300,Tags:["CF.MenuElement","CF.SectionContent","CF.MapNether"],billboard:"center",text:{text:"Loading...",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}

# === THE END ===
# Header (clickable)
execute rotated ~ 0 positioned ^ ^1.48 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25b6 ",color:"#A855F7"},{text:"The End","color":"#A855F7","bold":true},{text:" \u25c0","color":"#A855F7"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.48 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.MapEndClick"],width:0.6f,height:0.08f,response:1b}

# End entry
execute rotated ~ 0 positioned ^ ^1.35 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,line_width:300,Tags:["CF.MenuElement","CF.SectionContent","CF.MapEnd"],billboard:"center",text:{text:"Loading...",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}

# Discovery counter
execute rotated ~ 0 positioned ^ ^1.15 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.MapCounter"],billboard:"center",text:{text:"Discovered: 0/15",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}

# Refresh with live data
function evercraft:craftforever/codex/hub/nodemap/refresh
