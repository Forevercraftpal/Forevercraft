# Lore — Sub-Category Picker (Page 2)
# Shows Biome Sets / Structure Sets / Universal Sets for selected dimension
# Run as the player, at player, facing anchor

# Update title based on dimension
execute if score @s adv.gui_lore_dim matches 0 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Overworld Lore \u2726",color:"green",bold:true}
execute if score @s adv.gui_lore_dim matches 1 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Nether Lore \u2726",color:"red",bold:true}
execute if score @s adv.gui_lore_dim matches 2 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 End Lore \u2726",color:"dark_purple",bold:true}

# Subtitle
execute rotated ~ 0 positioned ^ ^2.51 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSubPick"],billboard:"center",text:{text:"Choose a category",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}

# === Biome Sets ===
execute rotated ~ 0 positioned ^ ^2.31 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSubPick"],billboard:"center",text:{text:"Biome Sets",color:"dark_green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^ ^2.19 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSubPick","Adv.LoreSubDesc0"],billboard:"center",text:{text:"Lore from the land itself",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.25 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSubPick","Adv.LoreSubClick0"],width:0.8f,height:0.08f,response:1b}

# === Structure Sets ===
execute rotated ~ 0 positioned ^ ^1.99 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSubPick"],billboard:"center",text:{text:"Structure Sets",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^ ^1.87 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSubPick","Adv.LoreSubDesc1"],billboard:"center",text:{text:"Secrets hidden in ruins",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^1.93 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSubPick","Adv.LoreSubClick1"],width:0.8f,height:0.08f,response:1b}

# === Universal Sets ===
execute rotated ~ 0 positioned ^ ^1.67 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSubPick"],billboard:"center",text:{text:"Universal Sets",color:"aqua",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^ ^1.55 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSubPick","Adv.LoreSubDesc2"],billboard:"center",text:{text:"Found anywhere in this dimension",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^1.61 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSubPick","Adv.LoreSubClick2"],width:0.8f,height:0.08f,response:1b}

# === [← Dimensions] back button ===
execute rotated ~ 0 positioned ^ ^1.29 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSubPick","Adv.LoreBackDimText"],billboard:"center",text:{text:"[\u2190 Dimensions]",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.25 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreSubPick","Adv.LoreBackDimClick"],width:0.4f,height:0.06f,response:1b}

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
