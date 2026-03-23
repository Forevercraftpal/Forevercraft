# ============================================================
# Craftforever Codex — Cookbook Section (Overview)
# Shows cooking mastery per category in a paginated 2-column grid
# Each category is clickable → opens detail sub-page
# ============================================================

# Subtitle
execute rotated ~ 0 positioned ^ ^2.70 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{"text":"Your culinary journey across all cuisines","color":"gray","italic":true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

# Initialize page if unset
execute unless score @s ec.cf_ck_page matches 0..1 run scoreboard players set @s ec.cf_ck_page 0

# Read all 11 mastery scores into storage
execute store result storage evercraft:cf_temp m_combat int 1 run scoreboard players get @s ck.m_combat
execute store result storage evercraft:cf_temp m_mining int 1 run scoreboard players get @s ck.m_mining
execute store result storage evercraft:cf_temp m_fortune int 1 run scoreboard players get @s ck.m_fortune
execute store result storage evercraft:cf_temp m_wayfarer int 1 run scoreboard players get @s ck.m_wayfarer
execute store result storage evercraft:cf_temp m_delicacy int 1 run scoreboard players get @s ck.m_delicacy
execute store result storage evercraft:cf_temp m_seasonal int 1 run scoreboard players get @s ck.m_seasonal
execute store result storage evercraft:cf_temp m_treats int 1 run scoreboard players get @s ck.m_treats
execute store result storage evercraft:cf_temp m_ration int 1 run scoreboard players get @s ck.m_ration
execute store result storage evercraft:cf_temp m_feast int 1 run scoreboard players get @s ck.m_feast
execute store result storage evercraft:cf_temp m_preserve int 1 run scoreboard players get @s ck.m_preserve
execute store result storage evercraft:cf_temp m_spirit int 1 run scoreboard players get @s ck.m_spirit

# Dispatch to page renderer
execute if score @s ec.cf_ck_page matches 0 run function evercraft:craftforever/codex/hub/cookbook/set_overview_p0 with storage evercraft:cf_temp
execute if score @s ec.cf_ck_page matches 1 run function evercraft:craftforever/codex/hub/cookbook/set_overview_p1 with storage evercraft:cf_temp

# --- Navigation Arrows ---
execute if score @s ec.cf_ck_page matches 0 rotated ~ 0 positioned ^ ^1.35 ^2.28 positioned ^0.50 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.CkNavPrevText"],billboard:"center",text:{"text":"[<]","color":"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute if score @s ec.cf_ck_page matches 1 rotated ~ 0 positioned ^ ^1.35 ^2.28 positioned ^0.50 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.CkNavPrevText"],billboard:"center",text:{"text":"[<]","color":"gold","bold":true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.33 ^2.3 positioned ^0.50 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.CkNavPrevClick"],width:0.2f,height:0.08f,response:1b}

execute if score @s ec.cf_ck_page matches 0 rotated ~ 0 positioned ^ ^1.35 ^2.28 positioned ^-0.50 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.CkNavNextText"],billboard:"center",text:{"text":"[>]","color":"gold","bold":true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute if score @s ec.cf_ck_page matches 1 rotated ~ 0 positioned ^ ^1.35 ^2.28 positioned ^-0.50 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.CkNavNextText"],billboard:"center",text:{"text":"[>]","color":"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute rotated ~ 0 positioned ^ ^1.33 ^2.3 positioned ^-0.50 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.CkNavNextClick"],width:0.2f,height:0.08f,response:1b}

# Page indicator
execute if score @s ec.cf_ck_page matches 0 rotated ~ 0 positioned ^ ^1.35 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{"text":"1 / 2","color":"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute if score @s ec.cf_ck_page matches 1 rotated ~ 0 positioned ^ ^1.35 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{"text":"2 / 2","color":"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

# Hint
execute rotated ~ 0 positioned ^ ^1.22 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{"text":"Click a category to view recipes","color":"dark_gray","italic":true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
