# ============================================================
# Phase 3: PLATE — Tick
# Runs as the player. Advances wave position with sine modulation.
# ============================================================

scoreboard players add @s ec.ck_timer 1
scoreboard players add @s ec.ck_v2 1

# --- Base rise (1 per v3 ticks) ---
scoreboard players operation #ck_rise_check ec.temp = @s ec.ck_timer
scoreboard players operation #ck_rise_check ec.temp %= @s ec.ck_v3
execute if score #ck_rise_check ec.temp matches 0 run scoreboard players add @s ec.ck_v1 1

# --- Sine modulation (40-tick period) ---
# Apply offset at transition ticks: 0,+1,+2,+1,0,-1,-2,-1 (8 steps * 5 = 40)
scoreboard players set #ck_forty ec.temp 40
scoreboard players operation #ck_sine_tick ec.temp = @s ec.ck_v2
scoreboard players operation #ck_sine_tick ec.temp %= #ck_forty ec.temp
execute if score #ck_sine_tick ec.temp matches 5 run scoreboard players add @s ec.ck_v1 1
execute if score #ck_sine_tick ec.temp matches 10 run scoreboard players add @s ec.ck_v1 2
execute if score #ck_sine_tick ec.temp matches 15 run scoreboard players add @s ec.ck_v1 1
execute if score #ck_sine_tick ec.temp matches 25 run scoreboard players remove @s ec.ck_v1 1
execute if score #ck_sine_tick ec.temp matches 30 run scoreboard players remove @s ec.ck_v1 2
execute if score #ck_sine_tick ec.temp matches 35 run scoreboard players remove @s ec.ck_v1 1

# Clamp floor at 0
execute if score @s ec.ck_v1 matches ..-1 run scoreboard players set @s ec.ck_v1 0

# --- Check for click every tick ---
function evercraft:cooking/minigame/phase3_plate/check_click

# --- Auto-resolve at 100 ---
execute if score @s ec.ck_v1 matches 100.. run return run function evercraft:cooking/minigame/phase3_plate/evaluate

# --- Render bar every 2 ticks ---
scoreboard players operation #ck_render ec.temp = @s ec.ck_timer
scoreboard players operation #ck_render ec.temp %= #2 adv.temp
execute unless score #ck_render ec.temp matches 0 run return 0

# Map position to 20 chars (each char = 5 units)
scoreboard players set #ck_five ec.temp 5
scoreboard players operation #ck_char ec.temp = @s ec.ck_v1
scoreboard players operation #ck_char ec.temp /= #ck_five ec.temp

# Golden zone: chars 12-15 (positions 60-79)
scoreboard players operation #gui_check ec.temp = @s adv.gui_session

execute if score #ck_char ec.temp matches 0..3 as @e[type=text_display,tag=CK.PlateBar,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"████","color":"yellow"},{"text":"░░░░░░░░","color":"dark_gray"},{"text":"████","color":"#FFD700"},{"text":"░░░░","color":"dark_gray"}]
execute if score #ck_char ec.temp matches 4..7 as @e[type=text_display,tag=CK.PlateBar,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"████████","color":"yellow"},{"text":"░░░░","color":"dark_gray"},{"text":"████","color":"#FFD700"},{"text":"░░░░","color":"dark_gray"}]
execute if score #ck_char ec.temp matches 8..11 as @e[type=text_display,tag=CK.PlateBar,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"████████████","color":"yellow"},{"text":"████","color":"#FFD700"},{"text":"░░░░","color":"dark_gray"}]
execute if score #ck_char ec.temp matches 12..15 as @e[type=text_display,tag=CK.PlateBar,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"████████████","color":"yellow"},{"text":"████","color":"#FFD700","bold":true},{"text":"░░░░","color":"dark_gray"}]
execute if score #ck_char ec.temp matches 16..19 as @e[type=text_display,tag=CK.PlateBar,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"████████████","color":"yellow"},{"text":"████","color":"#FFD700"},{"text":"████","color":"red"}]
