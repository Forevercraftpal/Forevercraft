# Craftforever Codex — Almanac Section
# Shows discovered/undiscovered biome nodes with clickable detail
# Run as player at player position

# Init almanac internal page
scoreboard players set @s ec.cf_alm_pg 1

# Subtitle + progress counter
execute rotated ~ 0 positioned ^ ^2.78 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.AlmProgress"],billboard:"center",text:{text:"Loading...",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

# Hint text
execute rotated ~ 0 positioned ^ ^2.65 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25b6 ",color:"dark_gray"},{text:"Click a node for details",color:"dark_gray",italic:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# Node entries — page 1 shows first 5 nodes
# Each entry: rarity indicator + bullet (discovered/undiscovered) + name + location
# PLUS interaction entity for click detail

# Entry 1
execute rotated ~ 0 positioned ^ ^2.45 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.AlmEntry1"],billboard:"center",text:{text:"Loading...",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute rotated ~ 0 positioned ^ ^2.45 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.AlmRow1"],width:1.4f,height:0.07f,response:1b}

# Entry 2
execute rotated ~ 0 positioned ^ ^2.25 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.AlmEntry2"],billboard:"center",text:{text:"Loading...",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute rotated ~ 0 positioned ^ ^2.25 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.AlmRow2"],width:1.4f,height:0.07f,response:1b}

# Entry 3
execute rotated ~ 0 positioned ^ ^2.05 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.AlmEntry3"],billboard:"center",text:{text:"Loading...",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute rotated ~ 0 positioned ^ ^2.05 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.AlmRow3"],width:1.4f,height:0.07f,response:1b}

# Entry 4
execute rotated ~ 0 positioned ^ ^1.85 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.AlmEntry4"],billboard:"center",text:{text:"Loading...",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute rotated ~ 0 positioned ^ ^1.85 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.AlmRow4"],width:1.4f,height:0.07f,response:1b}

# Entry 5
execute rotated ~ 0 positioned ^ ^1.65 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.AlmEntry5"],billboard:"center",text:{text:"Loading...",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute rotated ~ 0 positioned ^ ^1.65 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.AlmRow5"],width:1.4f,height:0.07f,response:1b}

# Counter + page number at bottom
execute rotated ~ 0 positioned ^ ^1.15 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.AlmCounter"],billboard:"center",text:{text:"Page 1/3",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}

# Page navigation arrows
execute rotated ~ 0 positioned ^0.75 ^1.15 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.AlmPrevText"],billboard:"center",text:{text:"\u25c0",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^0.75 ^1.15 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.AlmPrevClick"],width:0.2f,height:0.06f,response:1b}

execute rotated ~ 0 positioned ^-0.75 ^1.15 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.AlmNextText"],billboard:"center",text:{text:"\u25b6",color:"gold"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^-0.75 ^1.15 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.AlmNextClick"],width:0.2f,height:0.06f,response:1b}

# Refresh entry content based on discovery bitfield
function evercraft:craftforever/codex/hub/almanac/refresh
