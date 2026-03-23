# Codex Hub — Open
# Entry point when player right-clicks the codex item
# Spawns the floating GUI shell + hub directory buttons
# Toggle: if already open, close instead

# Toggle — if already open, close instead
execute if entity @s[tag=Adv.InMenu] run return run function evercraft:advantage/gui/close

# Tag player and set to hub (section 0)
tag @s add Adv.InMenu
scoreboard players set @s adv.gui_section 0
scoreboard players set @s adv.gui_page 1

# Unconditional guild state cleanup — prevents residual state from forcing guild page on reopen
tag @s remove ec.guild_in_menu
tag @s remove ec.guild_remote_menu
tag @s remove ec.guild_supply_select

# Generate unique session ID for multiplayer isolation
scoreboard players add #gui_session ec.var 1
scoreboard players operation @s adv.gui_session = #gui_session ec.var

# Spawn anchor marker (yaw-only, eye level, 1.8 blocks forward)
execute rotated ~ 0 positioned ^ ^2.05 ^2.3 run summon marker ~ ~ ~ {Tags:["Adv.MenuAnchor","Adv.MenuElement"]}

# Background panel (shared shell — stays across all sections)
execute rotated ~ 0 positioned ^ ^2.05 ^2.3 run summon item_display ~ ~ ~ {Tags:["Adv.MenuBG","Adv.MenuElement"],billboard:"center",item:{id:"black_stained_glass_pane",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[4.0f,2.5f,0.01f]}}

# Title (shared shell — text changes per section, clickable for stats on hub)
execute rotated ~ 0 positioned ^ ^3.0 ^2.3 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuTitle","Adv.MenuElement"],billboard:"center",text:{text:"\u2726 The Forevercraft Codex \u2726",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.81f,0.81f,0.81f]}}
# Title click zone (stats overview — only active on hub page)
execute rotated ~ 0 positioned ^ ^3.02 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.TitleClick"],width:1.2f,height:0.05f,response:1b}

# Auto-collect rewards if preference enabled
function evercraft:claim/auto_claim_all

# Count unclaimed rewards (for gold header indicators)
function evercraft:claim/check_unclaimed

# Spawn hub directory buttons (NO nav arrows on hub page)
function evercraft:codex/hub/spawn_hub

# Stamp all newly spawned entities with our session ID
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
# Stamp anchor first (from player feet)
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
# Stamp remaining entities via anchor proximity
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s as @e[tag=Adv.MenuElement,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

# Click cooldown — 3-tick score prevents held right-click from triggering newly spawned interaction entities
scoreboard players set @s adv.gui_cd 3

# Play open sound
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.5 1.2

# If wishing star mode, auto-enter artifact section with custom title
execute if entity @s[tag=ec.wishing_star_active] run function evercraft:gacha/wishing_star/gui/setup_codex

# If lucid claim mode, auto-enter spark artifact selection
execute if entity @s[tag=ec.lucid_claim_active] run function evercraft:gacha/spark/gui/setup_codex
