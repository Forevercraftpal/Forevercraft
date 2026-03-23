# ============================================================
# Campfire Kitchen GUI — Open
# Runs as the player, at the player
# Spawns all GUI entities in front of the player
# ============================================================

# Tag player as in menu
tag @s add CK.InMenu

# Default to Combat category (0)
scoreboard players set @s ec.ck_cat 0

# Initialize mode + tab page if never set
execute unless score @s ec.ck_mode matches 0..1 run scoreboard players set @s ec.ck_mode 0
execute unless score @s ec.ck_tab_page matches 0..1 run scoreboard players set @s ec.ck_tab_page 0

# --- Anchor Marker (tracks menu position) ---
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 run summon marker ~ ~ ~ {Tags:["CK.MenuEl","CK.Anchor"]}

# --- Background Panel ---
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0 ^-0.15 ^0 run summon item_display ~ ~ ~ {Tags:["CK.MenuEl","CK.MenuBG"],billboard:"center",item_display:"fixed",item:{id:"minecraft:black_stained_glass_pane",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[5.0f,3.2f,0.01f]}}

# --- Title (clickable — toggles cooking mode) ---
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0 ^0.70 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Title"],billboard:"center",text:[{"text":"✦ ","color":"gold"},{"text":"Campfire Kitchen","color":"gold","bold":true},{"text":" ✦","color":"gold"}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.608f,0.608f,0.608f]}}

# --- Mode Subtitle (centered below title, clickable) ---
execute if score @s ec.ck_mode matches 0 at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0 ^0.61 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.ModeText"],billboard:"center",text:[{"text":"[ ","color":"gray"},{"text":"Quick Cook","color":"green"},{"text":" ]","color":"gray"}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute if score @s ec.ck_mode matches 1 at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0 ^0.61 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.ModeText"],billboard:"center",text:[{"text":"[ ","color":"gray"},{"text":"Chef's Touch","color":"gold","bold":true},{"text":" ]","color":"gray"}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
# Interaction covers title + subtitle area
execute at @s rotated ~ 0 positioned ^ ^2.07 ^2.3 positioned ^0 ^0.63 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.ModeClick"],width:0.8f,height:0.15f,response:1b}

# --- Tab Navigation Arrows (permanent, page-colored in refresh_tabs) ---
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^1.45 ^0.50 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.TabPrevText"],billboard:"center",text:{"text":"[<]","color":"dark_gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute at @s rotated ~ 0 positioned ^ ^2.07 ^2.3 positioned ^1.45 ^0.44 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.TabPrevClick"],width:0.2f,height:0.08f,response:1b}
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^-1.45 ^0.50 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.TabNextText"],billboard:"center",text:{"text":"[>]","color":"gold","bold":true},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute at @s rotated ~ 0 positioned ^ ^2.07 ^2.3 positioned ^-1.45 ^0.44 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.TabNextClick"],width:0.2f,height:0.08f,response:1b}

# --- Recipe Rows (6 recipes per category, 0.26 spacing) ---
# Recipe 0 — name + [Cook] button + ingredient line
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0.15 ^0.34 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Recipe0"],billboard:"center",text:{"text":"Loading...","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^-0.60 ^0.34 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Cook0Text"],billboard:"center",text:{"text":"[Cook]","color":"green","bold":true},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute at @s rotated ~ 0 positioned ^ ^2.07 ^2.3 positioned ^-0.60 ^0.29 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.Cook0Click"],width:0.18f,height:0.05f,response:1b}
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0.15 ^0.24 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Ingr0"],billboard:"center",text:{"text":"","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Recipe 1
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0.15 ^0.08 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Recipe1"],billboard:"center",text:{"text":"Loading...","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^-0.60 ^0.08 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Cook1Text"],billboard:"center",text:{"text":"[Cook]","color":"green","bold":true},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute at @s rotated ~ 0 positioned ^ ^2.07 ^2.3 positioned ^-0.60 ^0.03 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.Cook1Click"],width:0.18f,height:0.05f,response:1b}
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0.15 ^-0.02 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Ingr1"],billboard:"center",text:{"text":"","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Recipe 2
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0.15 ^-0.18 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Recipe2"],billboard:"center",text:{"text":"Loading...","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^-0.60 ^-0.18 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Cook2Text"],billboard:"center",text:{"text":"[Cook]","color":"green","bold":true},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute at @s rotated ~ 0 positioned ^ ^2.07 ^2.3 positioned ^-0.60 ^-0.23 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.Cook2Click"],width:0.18f,height:0.05f,response:1b}
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0.15 ^-0.28 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Ingr2"],billboard:"center",text:{"text":"","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Recipe 3
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0.15 ^-0.44 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Recipe3"],billboard:"center",text:{"text":"Loading...","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^-0.60 ^-0.44 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Cook3Text"],billboard:"center",text:{"text":"[Cook]","color":"green","bold":true},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute at @s rotated ~ 0 positioned ^ ^2.07 ^2.3 positioned ^-0.60 ^-0.49 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.Cook3Click"],width:0.18f,height:0.05f,response:1b}
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0.15 ^-0.54 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Ingr3"],billboard:"center",text:{"text":"","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Recipe 4
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0.15 ^-0.70 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Recipe4"],billboard:"center",text:{"text":"Loading...","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^-0.60 ^-0.70 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Cook4Text"],billboard:"center",text:{"text":"[Cook]","color":"green","bold":true},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute at @s rotated ~ 0 positioned ^ ^2.07 ^2.3 positioned ^-0.60 ^-0.75 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.Cook4Click"],width:0.18f,height:0.05f,response:1b}
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0.15 ^-0.80 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Ingr4"],billboard:"center",text:{"text":"","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# Recipe 5
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0.15 ^-0.96 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Recipe5"],billboard:"center",text:{"text":"Loading...","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^-0.60 ^-0.96 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Cook5Text"],billboard:"center",text:{"text":"[Cook]","color":"green","bold":true},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute at @s rotated ~ 0 positioned ^ ^2.07 ^2.3 positioned ^-0.60 ^-1.01 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.Cook5Click"],width:0.18f,height:0.05f,response:1b}
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0.15 ^-1.06 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.Ingr5"],billboard:"center",text:{"text":"","color":"gray"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}

# --- Close Button (centered) ---
execute at @s rotated ~ 0 positioned ^ ^2.05 ^2.3 positioned ^0 ^-1.20 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CK.MenuEl","CK.CloseText"],billboard:"center",text:{"text":"[Close]","color":"red"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute at @s rotated ~ 0 positioned ^ ^2.07 ^2.3 positioned ^0 ^-1.26 ^0 run summon interaction ~ ~ ~ {Tags:["CK.MenuEl","CK.CloseClick"],width:0.2f,height:0.06f,response:1b}

# --- Session isolation ---
scoreboard players add #gui_session ec.var 1
scoreboard players operation @s adv.gui_session = #gui_session ec.var
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=CK.MenuEl,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=item_display,tag=CK.MenuEl,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=interaction,tag=CK.MenuEl,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

playsound minecraft:block.campfire.crackle master @s ~ ~ ~ 0.8 1.2

# --- Spawn paginated tabs ---
function evercraft:cooking/gui/refresh_tabs

# --- Initial refresh to populate recipe displays ---
function evercraft:cooking/gui/refresh
