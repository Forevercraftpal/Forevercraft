# Codex Friends — Enter (section 12)
# Spawns friends list GUI inside codex frame
# Run as the player

# Init page state
scoreboard players set @s ec.fr_page 1
scoreboard players set @s ec.fr_target 0

# Spawn friend count header (centered)
execute rotated ~ 0 positioned ^ ^2.55 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_header"],billboard:"center",text:{text:"Loading...",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# [☆ Showcase] button at top right
execute rotated ~ 0 positioned ^-0.87 ^2.72 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_showcase_txt"],billboard:"center",text:[{text:"[ ",color:"dark_gray"},{text:"\u2606 Showcase",color:"gold",bold:true},{text:" ]",color:"dark_gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^-0.87 ^2.68 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_showcase_btn"],width:0.35f,height:0.06f,response:1b}

# Spawn page nav (< Page X/Y >) at bottom
execute rotated ~ 0 positioned ^0.32 ^1.2 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_prev_txt"],billboard:"center",text:{text:"<",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^0.32 ^1.16 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_prev"],width:0.15f,height:0.06f,response:1b}

execute rotated ~ 0 positioned ^ ^1.2 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_page_txt"],billboard:"center",text:{text:"Page 1",color:"white"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

execute rotated ~ 0 positioned ^-0.32 ^1.2 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_next_txt"],billboard:"center",text:{text:">",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^-0.32 ^1.16 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_next"],width:0.15f,height:0.06f,response:1b}

# Stamp session on ALL friends GUI elements (required for click detection)
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[tag=ec.fr_gui_el,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

# Load friend list and display page 1
function evercraft:codex/friends/refresh
