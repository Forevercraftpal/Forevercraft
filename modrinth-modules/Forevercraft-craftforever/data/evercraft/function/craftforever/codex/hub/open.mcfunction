# Craftforever Codex Hub — Open
# Spawns the floating GUI shell + 8 section buttons
# Toggle: if already open, close instead

# Toggle — if already open, close instead
execute if entity @s[tag=CF.InCodex] run return run function evercraft:craftforever/codex/hub/close

# Tag player
tag @s add CF.InCodex
scoreboard players set @s ec.cf_codex_section 0
scoreboard players set @s ec.cf_codex_page 1

# Generate unique session ID for multiplayer isolation
scoreboard players add #cf_gui_session ec.var 1
scoreboard players operation @s ec.cf_gui_session = #cf_gui_session ec.var

# Spawn anchor marker (yaw-only, eye level, 1.8 blocks forward)
execute rotated ~ 0 positioned ^ ^2.05 ^2.3 run summon marker ~ ~ ~ {Tags:["CF.MenuAnchor","CF.MenuElement"]}

# Background panel
execute rotated ~ 0 positioned ^ ^2.05 ^2.3 run summon item_display ~ ~ ~ {Tags:["CF.MenuBG","CF.MenuElement"],billboard:"center",item:{id:"black_stained_glass_pane",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[4.0f,2.5f,0.01f]}}

# Title
execute rotated ~ 0 positioned ^ ^3.0 ^2.3 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuTitle","CF.MenuElement"],billboard:"center",text:{text:"\u2726 The Craftforever Codex \u2726",color:"#8BC34A",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.81f,0.81f,0.81f]}}

# Spawn hub directory buttons
function evercraft:craftforever/codex/hub/spawn_hub

# Stamp all newly spawned entities with our session ID
scoreboard players operation #cf_gui_stamp ec.temp = @s ec.cf_gui_session
execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5] unless score @s ec.cf_gui_session matches 1.. run scoreboard players operation @s ec.cf_gui_session = #cf_gui_stamp ec.temp
execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5] if score @s ec.cf_gui_session = #cf_gui_stamp ec.temp at @s as @e[tag=CF.MenuElement,distance=..5] unless score @s ec.cf_gui_session matches 1.. run scoreboard players operation @s ec.cf_gui_session = #cf_gui_stamp ec.temp

# Click cooldown — 3-tick delay prevents held right-click from triggering buttons
scoreboard players set @s ec.cf_codex_cd 3

# Play open sound
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.5 1.2
