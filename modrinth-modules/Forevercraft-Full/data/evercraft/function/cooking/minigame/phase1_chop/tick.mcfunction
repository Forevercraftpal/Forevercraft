# ============================================================
# Phase 1: CHOP — Tick
# Runs as the player each tick during phase 1
# Moves marker, renders bar, checks for click
# ============================================================

# Increment timer
scoreboard players add @s ec.ck_timer 1

# --- Move marker ---
scoreboard players operation #ck_move ec.temp = @s ec.ck_v3
scoreboard players operation #ck_move ec.temp *= @s ec.ck_v2
scoreboard players operation @s ec.ck_v1 += #ck_move ec.temp

# Bounce off edges — clamp then set direction based on which end
execute if score @s ec.ck_v1 matches 100.. run scoreboard players set @s ec.ck_v1 100
execute if score @s ec.ck_v1 matches 100 if score @s ec.ck_v2 matches 1.. run scoreboard players set @s ec.ck_v2 -1
execute if score @s ec.ck_v1 matches ..0 run scoreboard players set @s ec.ck_v1 0
execute if score @s ec.ck_v1 matches 0 if score @s ec.ck_v2 matches ..-1 run scoreboard players set @s ec.ck_v2 1

# --- Check for click every tick ---
function evercraft:cooking/minigame/phase1_chop/check_click

# --- Timeout at 500 ticks (25 seconds) ---
execute if score @s ec.ck_timer matches 500.. run return run function evercraft:cooking/minigame/phase1_chop/timeout

# --- Render bar every 2 ticks (performance) ---
scoreboard players operation #ck_render ec.temp = @s ec.ck_timer
scoreboard players operation #ck_render ec.temp %= #2 adv.temp
execute unless score #ck_render ec.temp matches 0 run return 0

# Map marker (0-100) to 20 chars: each char = 5 units
scoreboard players set #ck_five ec.temp 5
scoreboard players operation #ck_char ec.temp = @s ec.ck_v1
scoreboard players operation #ck_char ec.temp /= #ck_five ec.temp

# Render bar — sweet zone chars 7-12 are green, marker char is white/yellow bold
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute if score #ck_char ec.temp matches 0..1 as @e[type=text_display,tag=CK.ChopBar,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"█","color":"white","bold":true},{"text":"░░░░░░","color":"dark_gray"},{"text":"██████","color":"green"},{"text":"░░░░░░░","color":"dark_gray"}]
execute if score #ck_char ec.temp matches 2..3 as @e[type=text_display,tag=CK.ChopBar,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"░░","color":"dark_gray"},{"text":"█","color":"white","bold":true},{"text":"░░░░","color":"dark_gray"},{"text":"██████","color":"green"},{"text":"░░░░░░░","color":"dark_gray"}]
execute if score #ck_char ec.temp matches 4..6 as @e[type=text_display,tag=CK.ChopBar,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"░░░░","color":"dark_gray"},{"text":"█","color":"white","bold":true},{"text":"░░","color":"dark_gray"},{"text":"██████","color":"green"},{"text":"░░░░░░░","color":"dark_gray"}]
execute if score #ck_char ec.temp matches 7..8 as @e[type=text_display,tag=CK.ChopBar,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"░░░░░░░","color":"dark_gray"},{"text":"█","color":"yellow","bold":true},{"text":"█████","color":"green"},{"text":"░░░░░░░","color":"dark_gray"}]
execute if score #ck_char ec.temp matches 9..10 as @e[type=text_display,tag=CK.ChopBar,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"░░░░░░░","color":"dark_gray"},{"text":"███","color":"green"},{"text":"█","color":"yellow","bold":true},{"text":"███","color":"green"},{"text":"░░░░░░","color":"dark_gray"}]
execute if score #ck_char ec.temp matches 11..12 as @e[type=text_display,tag=CK.ChopBar,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"░░░░░░░","color":"dark_gray"},{"text":"█████","color":"green"},{"text":"█","color":"yellow","bold":true},{"text":"░░░░░░░","color":"dark_gray"}]
execute if score #ck_char ec.temp matches 13..15 as @e[type=text_display,tag=CK.ChopBar,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"░░░░░░░","color":"dark_gray"},{"text":"██████","color":"green"},{"text":"░░","color":"dark_gray"},{"text":"█","color":"white","bold":true},{"text":"░░░░","color":"dark_gray"}]
execute if score #ck_char ec.temp matches 16..17 as @e[type=text_display,tag=CK.ChopBar,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"░░░░░░░","color":"dark_gray"},{"text":"██████","color":"green"},{"text":"░░░░","color":"dark_gray"},{"text":"█","color":"white","bold":true},{"text":"░░","color":"dark_gray"}]
execute if score #ck_char ec.temp matches 18..19 as @e[type=text_display,tag=CK.ChopBar,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"░░░░░░░","color":"dark_gray"},{"text":"██████","color":"green"},{"text":"░░░░░░","color":"dark_gray"},{"text":"█","color":"white","bold":true}]
