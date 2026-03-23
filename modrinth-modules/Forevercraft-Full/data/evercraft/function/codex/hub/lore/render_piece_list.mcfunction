# Lore — Render Piece List for Set Detail (Macro)
# Shows up to 8 pieces with collected/uncollected status
# Macro arg: fill_set_id
# Run as the player, at player, facing anchor
# Uses #lore_fill_req for piece count

# Y positions: 1.68, 1.56, 1.44, 1.32, 1.20, 1.08, 0.96, 0.84

# Piece 1 (always exists)
execute rotated ~ 0 positioned ^ ^2.53 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDetail","Adv.LorePiece1"],billboard:"center",text:{text:""},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}
$execute if entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p1=true}] run data modify entity @e[type=text_display,tag=Adv.LorePiece1,distance=..5,limit=1] text set value {text:"\u2714 Part I",color:"green"}
$execute unless entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p1=true}] run data modify entity @e[type=text_display,tag=Adv.LorePiece1,distance=..5,limit=1] text set value {text:"\u2718 Part I",color:"dark_gray"}

# Piece 2
execute if score #lore_fill_req ec.temp matches 2.. rotated ~ 0 positioned ^ ^2.41 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDetail","Adv.LorePiece2"],billboard:"center",text:{text:""},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}
$execute if score #lore_fill_req ec.temp matches 2.. if entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p2=true}] run data modify entity @e[type=text_display,tag=Adv.LorePiece2,distance=..5,limit=1] text set value {text:"\u2714 Part II",color:"green"}
$execute if score #lore_fill_req ec.temp matches 2.. unless entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p2=true}] run data modify entity @e[type=text_display,tag=Adv.LorePiece2,distance=..5,limit=1] text set value {text:"\u2718 Part II",color:"dark_gray"}

# Piece 3
execute if score #lore_fill_req ec.temp matches 3.. rotated ~ 0 positioned ^ ^2.29 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDetail","Adv.LorePiece3"],billboard:"center",text:{text:""},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}
$execute if score #lore_fill_req ec.temp matches 3.. if entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p3=true}] run data modify entity @e[type=text_display,tag=Adv.LorePiece3,distance=..5,limit=1] text set value {text:"\u2714 Part III",color:"green"}
$execute if score #lore_fill_req ec.temp matches 3.. unless entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p3=true}] run data modify entity @e[type=text_display,tag=Adv.LorePiece3,distance=..5,limit=1] text set value {text:"\u2718 Part III",color:"dark_gray"}

# Piece 4
execute if score #lore_fill_req ec.temp matches 4.. rotated ~ 0 positioned ^ ^2.17 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDetail","Adv.LorePiece4"],billboard:"center",text:{text:""},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}
$execute if score #lore_fill_req ec.temp matches 4.. if entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p4=true}] run data modify entity @e[type=text_display,tag=Adv.LorePiece4,distance=..5,limit=1] text set value {text:"\u2714 Part IV",color:"green"}
$execute if score #lore_fill_req ec.temp matches 4.. unless entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p4=true}] run data modify entity @e[type=text_display,tag=Adv.LorePiece4,distance=..5,limit=1] text set value {text:"\u2718 Part IV",color:"dark_gray"}

# Piece 5
execute if score #lore_fill_req ec.temp matches 5.. rotated ~ 0 positioned ^ ^2.05 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDetail","Adv.LorePiece5"],billboard:"center",text:{text:""},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}
$execute if score #lore_fill_req ec.temp matches 5.. if entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p5=true}] run data modify entity @e[type=text_display,tag=Adv.LorePiece5,distance=..5,limit=1] text set value {text:"\u2714 Part V",color:"green"}
$execute if score #lore_fill_req ec.temp matches 5.. unless entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p5=true}] run data modify entity @e[type=text_display,tag=Adv.LorePiece5,distance=..5,limit=1] text set value {text:"\u2718 Part V",color:"dark_gray"}

# Piece 6
execute if score #lore_fill_req ec.temp matches 6.. rotated ~ 0 positioned ^ ^1.93 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDetail","Adv.LorePiece6"],billboard:"center",text:{text:""},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}
$execute if score #lore_fill_req ec.temp matches 6.. if entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p6=true}] run data modify entity @e[type=text_display,tag=Adv.LorePiece6,distance=..5,limit=1] text set value {text:"\u2714 Part VI",color:"green"}
$execute if score #lore_fill_req ec.temp matches 6.. unless entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p6=true}] run data modify entity @e[type=text_display,tag=Adv.LorePiece6,distance=..5,limit=1] text set value {text:"\u2718 Part VI",color:"dark_gray"}

# Piece 7
execute if score #lore_fill_req ec.temp matches 7.. rotated ~ 0 positioned ^ ^1.81 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDetail","Adv.LorePiece7"],billboard:"center",text:{text:""},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}
$execute if score #lore_fill_req ec.temp matches 7.. if entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p7=true}] run data modify entity @e[type=text_display,tag=Adv.LorePiece7,distance=..5,limit=1] text set value {text:"\u2714 Part VII",color:"green"}
$execute if score #lore_fill_req ec.temp matches 7.. unless entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p7=true}] run data modify entity @e[type=text_display,tag=Adv.LorePiece7,distance=..5,limit=1] text set value {text:"\u2718 Part VII",color:"dark_gray"}

# Piece 8
execute if score #lore_fill_req ec.temp matches 8.. rotated ~ 0 positioned ^ ^1.69 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDetail","Adv.LorePiece8"],billboard:"center",text:{text:""},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}
$execute if score #lore_fill_req ec.temp matches 8.. if entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p8=true}] run data modify entity @e[type=text_display,tag=Adv.LorePiece8,distance=..5,limit=1] text set value {text:"\u2714 Part VIII",color:"green"}
$execute if score #lore_fill_req ec.temp matches 8.. unless entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p8=true}] run data modify entity @e[type=text_display,tag=Adv.LorePiece8,distance=..5,limit=1] text set value {text:"\u2718 Part VIII",color:"dark_gray"}
