# ============================================================
# Black Market — Open GUI
# Run as: player who clicked the barrel
# ============================================================

# Already in menu? Close first (toggle behavior)
execute if entity @s[tag=BM.InMenu] run function evercraft:black_market/gui/close
execute if entity @s[tag=BM.InMenu] run return 0

# Kill any orphaned elements from a previous session (crash, relog)
execute at @s run kill @e[type=text_display,tag=BM.El,distance=..5]
execute at @s run kill @e[type=interaction,tag=BM.El,distance=..5]
execute at @s run kill @e[type=item_display,tag=BM.El,distance=..5]
execute at @s run kill @e[type=marker,tag=BM.Anchor,distance=..5]

# Tag player and set defaults
tag @s add BM.InMenu
scoreboard players set @s ec.bm_idle 0
scoreboard players set @s ec.bm_tab 1
scoreboard players set @s ec.bm_page 1
scoreboard players set @s ec.bm_select 0
scoreboard players set @s ec.bm_price 0
scoreboard players set @s ec.bm_confirm -1

# Spawn anchor marker at player's current position + rotation
# All GUI rebuilds will use this anchor so the menu doesn't shift
execute at @s run summon marker ~ ~ ~ {Tags:["BM.Anchor"]}
execute at @s run data modify entity @e[type=marker,tag=BM.Anchor,distance=..1,limit=1,sort=nearest] Rotation set from entity @s Rotation

# Ensure daily deals exist
function evercraft:black_market/generate_deals

# Check for pending sale notification
function evercraft:black_market/escrow/check_pending_sale

# Load player balance + listing count from storage
function evercraft:black_market/escrow/load_player

# Spawn entire GUI (shell + tab content + netherite display)
function evercraft:black_market/gui/refresh

# Actionbar message (also overrides vanilla "Container is locked!" text)
title @s actionbar [{text:"\u2620 ",color:"dark_red"},{text:"Welcome to the Black Market",color:"red",bold:true},{text:" \u2620",color:"dark_red"}]

# Sound

# Session isolation
scoreboard players add #gui_session ec.var 1
scoreboard players operation @s adv.gui_session = #gui_session ec.var
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=BM.El,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=item_display,tag=BM.El,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=interaction,tag=BM.El,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=text_display,tag=BM.Anchor,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=item_display,tag=BM.Anchor,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=interaction,tag=BM.Anchor,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[type=marker,tag=BM.Anchor,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

playsound minecraft:block.barrel.open master @s ~ ~ ~ 0.6 0.7
