# Lore — Spawn Set List (Page 3)
# Shows up to 5 sets per page with pagination, based on dim + subcat + page offset
# Run as the player, at player, facing anchor

# Initialize list page to 1
scoreboard players set @s adv.gui_lore_pg 1

# Update title based on context
execute if score @s adv.gui_lore_subcat matches 1 if score @s adv.gui_lore_dim matches 0 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Overworld Biomes \u2726",color:"dark_green",bold:true}
execute if score @s adv.gui_lore_subcat matches 2 if score @s adv.gui_lore_dim matches 0 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Overworld Structures \u2726",color:"gold",bold:true}
execute if score @s adv.gui_lore_subcat matches 3 if score @s adv.gui_lore_dim matches 0 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Overworld Universal \u2726",color:"aqua",bold:true}
execute if score @s adv.gui_lore_subcat matches 1 if score @s adv.gui_lore_dim matches 1 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Nether Biomes \u2726",color:"dark_green",bold:true}
execute if score @s adv.gui_lore_subcat matches 2 if score @s adv.gui_lore_dim matches 1 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Nether Structures \u2726",color:"gold",bold:true}
execute if score @s adv.gui_lore_subcat matches 3 if score @s adv.gui_lore_dim matches 1 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Nether Universal \u2726",color:"aqua",bold:true}
execute if score @s adv.gui_lore_subcat matches 1 if score @s adv.gui_lore_dim matches 2 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 End Biomes \u2726",color:"dark_green",bold:true}
execute if score @s adv.gui_lore_subcat matches 2 if score @s adv.gui_lore_dim matches 2 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 End Structures \u2726",color:"gold",bold:true}
execute if score @s adv.gui_lore_subcat matches 3 if score @s adv.gui_lore_dim matches 2 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 End Universal \u2726",color:"aqua",bold:true}
execute if score @s adv.gui_lore_subcat matches 4 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Lore Pages \u2726",color:"gold",bold:true}

# Build the pool key and resolve set list from storage
# Pool key format: sets_list.{dim}_{subcat}
# Store dim and subcat for macro
execute store result storage evercraft:lore temp.gui_dim int 1 run scoreboard players get @s adv.gui_lore_dim
execute store result storage evercraft:lore temp.gui_subcat int 1 run scoreboard players get @s adv.gui_lore_subcat

# Get the set list for this dim+subcat from storage and count entries
function evercraft:codex/hub/lore/resolve_set_pool with storage evercraft:lore temp

# Spawn 5 set entry slots (text_display placeholder + interaction)
# Y positions: 1.72, 1.48, 1.24, 1.00, 0.76

# Set entry 0
execute rotated ~ 0 positioned ^ ^2.57 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSetList","Adv.LoreSetName0"],billboard:"center",text:{text:"",color:"white"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.351f,0.351f,0.351f]}}
execute rotated ~ 0 positioned ^ ^2.48 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSetList","Adv.LoreSetInfo0"],billboard:"center",text:{text:"",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.52 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSetList","Adv.LoreSetClick0"],width:0.8f,height:0.07f,response:1b}

# Set entry 1
execute rotated ~ 0 positioned ^ ^2.33 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSetList","Adv.LoreSetName1"],billboard:"center",text:{text:"",color:"white"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.351f,0.351f,0.351f]}}
execute rotated ~ 0 positioned ^ ^2.24 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSetList","Adv.LoreSetInfo1"],billboard:"center",text:{text:"",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.28 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSetList","Adv.LoreSetClick1"],width:0.8f,height:0.07f,response:1b}

# Set entry 2
execute rotated ~ 0 positioned ^ ^2.09 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSetList","Adv.LoreSetName2"],billboard:"center",text:{text:"",color:"white"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.351f,0.351f,0.351f]}}
execute rotated ~ 0 positioned ^ ^2 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSetList","Adv.LoreSetInfo2"],billboard:"center",text:{text:"",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.04 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSetList","Adv.LoreSetClick2"],width:0.8f,height:0.07f,response:1b}

# Set entry 3
execute rotated ~ 0 positioned ^ ^1.85 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSetList","Adv.LoreSetName3"],billboard:"center",text:{text:"",color:"white"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.351f,0.351f,0.351f]}}
execute rotated ~ 0 positioned ^ ^1.76 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSetList","Adv.LoreSetInfo3"],billboard:"center",text:{text:"",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.3 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSetList","Adv.LoreSetClick3"],width:0.8f,height:0.07f,response:1b}

# Set entry 4
execute rotated ~ 0 positioned ^ ^1.61 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSetList","Adv.LoreSetName4"],billboard:"center",text:{text:"",color:"white"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.351f,0.351f,0.351f]}}
execute rotated ~ 0 positioned ^ ^1.52 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSetList","Adv.LoreSetInfo4"],billboard:"center",text:{text:"",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^1.56 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSetList","Adv.LoreSetClick4"],width:0.8f,height:0.07f,response:1b}

# === Navigation: [← Prev] Page X/Y [Next →] + [← Back] ===
# Page indicator (center)
execute rotated ~ 0 positioned ^ ^1.37 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSetList","Adv.LorePageNum"],billboard:"center",text:{text:"Page 1/1",color:"white"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# [← Prev] button (left of center — offset via positioned, not translation)
execute rotated ~ 0 positioned ^0.45 ^1.37 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSetList","Adv.LoreNavLeftText"],billboard:"center",text:{text:"[\u2190]",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.351f,0.351f,0.351f]}}
execute rotated ~ 0 positioned ^0.45 ^1.33 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSetList","Adv.LoreNavLeft"],width:0.25f,height:0.06f,response:1b}

# [Next →] button (right of center — offset via positioned, not translation)
execute rotated ~ 0 positioned ^-0.45 ^1.37 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSetList","Adv.LoreNavRightText"],billboard:"center",text:{text:"[\u2192]",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.351f,0.351f,0.351f]}}
execute rotated ~ 0 positioned ^-0.45 ^1.33 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSetList","Adv.LoreNavRight"],width:0.25f,height:0.06f,response:1b}

# [← Back] button (above universal Menu button at Y=0.24)
execute rotated ~ 0 positioned ^ ^1.25 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSetList"],billboard:"center",text:{text:"[\u2190 Back]",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}
execute rotated ~ 0 positioned ^ ^1.21 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSetList","Adv.LoreBackSubClick"],width:0.4f,height:0.06f,response:1b}

# Fill set entries with data
function evercraft:codex/hub/lore/refresh_set_list
