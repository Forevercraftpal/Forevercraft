# Bestiary Section — Spawn (Section 19, standalone)
# Directly opens the bestiary (skips challenges page)
# Uses pages 1-5 (remapped from challenges pages 2-6)
# Run as the player, at player

# Set page 1 (first bestiary page)
scoreboard players set @s adv.gui_page 1

# Page indicator (below title)
execute rotated ~ 0 positioned ^ ^2.72 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Bs.StPageLabel"],billboard:"center",text:{"text":"Page 1/5","color":"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# Section header
execute rotated ~ 0 positioned ^ ^2.64 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent"],billboard:"center",text:{"text":"Monster Compendium","color":"gray","italic":true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

# Navigation arrows (lowered to match content area)
execute rotated ~ 0 positioned ^1.45 ^1.92 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent"],billboard:"center",text:{"text":"[ < ]","color":"white"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute rotated ~ 0 positioned ^1.45 ^1.90 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Bs.StNavLeftClick"],width:0.3f,height:0.04f,response:1b}
execute rotated ~ 0 positioned ^-1.45 ^1.92 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent"],billboard:"center",text:{"text":"[ > ]","color":"white"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute rotated ~ 0 positioned ^-1.45 ^1.90 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Bs.StNavRightClick"],width:0.3f,height:0.04f,response:1b}

# Spawn first bestiary page content
# Map standalone page 1 → bestiary/gui page 2
scoreboard players set @s adv.gui_page 2
function evercraft:bestiary/gui/spawn_bestiary_page

# Refresh page content
execute if score @s adv.gui_page matches 2 run function evercraft:bestiary/gui/refresh_page2
execute if score @s adv.gui_page matches 3 run function evercraft:bestiary/gui/refresh_page3
execute if score @s adv.gui_page matches 4 run function evercraft:bestiary/gui/refresh_page4
execute if score @s adv.gui_page matches 5 run function evercraft:bestiary/gui/refresh_page5
execute if score @s adv.gui_page matches 6 run function evercraft:bestiary/gui/refresh_page6
