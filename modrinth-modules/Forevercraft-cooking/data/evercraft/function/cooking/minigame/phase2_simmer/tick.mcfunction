# ============================================================
# Phase 2: SIMMER — Tick
# Runs as the player. Drifts temperature, tracks zone time.
# ============================================================

# Increment timer + decrement button cooldown
scoreboard players add @s ec.ck_timer 1
execute if score @s ec.ck_v5 matches 1.. run scoreboard players remove @s ec.ck_v5 1

# --- Track zone time every tick (40-60 = simmer zone) ---
execute if score @s ec.ck_v1 matches 40..60 run scoreboard players add @s ec.ck_v3 1

# --- Check for button clicks every tick ---
function evercraft:cooking/minigame/phase2_simmer/check_clicks

# --- Check duration expiry ---
execute if score @s ec.ck_timer >= @s ec.ck_v4 run return run function evercraft:cooking/minigame/phase2_simmer/evaluate

# --- Random drift every 3 ticks ---
scoreboard players set #ck_three ec.temp 3
scoreboard players operation #ck_drift_check ec.temp = @s ec.ck_timer
scoreboard players operation #ck_drift_check ec.temp %= #ck_three ec.temp
execute unless score #ck_drift_check ec.temp matches 0 run return 0

# Random direction flip (15% chance) — set constant BEFORE use
scoreboard players set #ck_neg1 ec.temp -1
execute store result score #ck_flip ec.temp run random value 1..100
execute if score #ck_flip ec.temp matches 1..15 run scoreboard players operation @s ec.ck_v2 *= #ck_neg1 ec.temp

# Drift amount by tier
scoreboard players set #ck_drift_amt ec.temp 2
execute if score @s ec.ck_tier matches 2 run scoreboard players set #ck_drift_amt ec.temp 3
execute if score @s ec.ck_tier matches 3 run scoreboard players set #ck_drift_amt ec.temp 4
execute if score @s ec.ck_tier matches 4 run scoreboard players set #ck_drift_amt ec.temp 5

# Apply drift
scoreboard players operation #ck_drift_amt ec.temp *= @s ec.ck_v2
scoreboard players operation @s ec.ck_v1 += #ck_drift_amt ec.temp

# Clamp 0-100
execute if score @s ec.ck_v1 matches ..-1 run scoreboard players set @s ec.ck_v1 0
execute if score @s ec.ck_v1 matches 101.. run scoreboard players set @s ec.ck_v1 100

# Bounce off edges (reverse direction)
execute if score @s ec.ck_v1 matches 0 run scoreboard players set @s ec.ck_v2 1
execute if score @s ec.ck_v1 matches 100 run scoreboard players set @s ec.ck_v2 -1

# --- Render bar ---
# Map temp (0-100) to 20 chars. Zone chars 8-12 are green.
scoreboard players set #ck_five ec.temp 5
scoreboard players operation #ck_char ec.temp = @s ec.ck_v1
scoreboard players operation #ck_char ec.temp /= #ck_five ec.temp

scoreboard players operation #gui_check ec.temp = @s adv.gui_session

execute if score #ck_char ec.temp matches 0..3 as @e[type=text_display,tag=CK.SimmBar,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"█","color":"blue","bold":true},{"text":"░░░░░░░","color":"dark_gray"},{"text":"██████","color":"green"},{"text":"░░░░░░░","color":"dark_gray"}]
execute if score #ck_char ec.temp matches 4..5 as @e[type=text_display,tag=CK.SimmBar,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"░░░░","color":"dark_gray"},{"text":"█","color":"aqua","bold":true},{"text":"░░░","color":"dark_gray"},{"text":"██████","color":"green"},{"text":"░░░░░░░","color":"dark_gray"}]
execute if score #ck_char ec.temp matches 6..7 as @e[type=text_display,tag=CK.SimmBar,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"░░░░░░","color":"dark_gray"},{"text":"█","color":"aqua","bold":true},{"text":"░","color":"dark_gray"},{"text":"██████","color":"green"},{"text":"░░░░░░░","color":"dark_gray"}]
execute if score #ck_char ec.temp matches 8..12 as @e[type=text_display,tag=CK.SimmBar,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"░░░░░░░░","color":"dark_gray"},{"text":"██","color":"green"},{"text":"█","color":"yellow","bold":true},{"text":"███","color":"green"},{"text":"░░░░░░░","color":"dark_gray"}]
execute if score #ck_char ec.temp matches 13..14 as @e[type=text_display,tag=CK.SimmBar,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"░░░░░░░░","color":"dark_gray"},{"text":"██████","color":"green"},{"text":"░","color":"dark_gray"},{"text":"█","color":"#FF6B00","bold":true},{"text":"░░░░░","color":"dark_gray"}]
execute if score #ck_char ec.temp matches 15..16 as @e[type=text_display,tag=CK.SimmBar,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"░░░░░░░░","color":"dark_gray"},{"text":"██████","color":"green"},{"text":"░░░","color":"dark_gray"},{"text":"█","color":"#FF6B00","bold":true},{"text":"░░░","color":"dark_gray"}]
execute if score #ck_char ec.temp matches 17..20 as @e[type=text_display,tag=CK.SimmBar,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"░░░░░░░░","color":"dark_gray"},{"text":"██████","color":"green"},{"text":"░░░░░░","color":"dark_gray"},{"text":"█","color":"red","bold":true}]

# Update progress display
scoreboard players operation #ck_pct ec.temp = @s ec.ck_v3
scoreboard players operation #ck_pct ec.temp *= #100 adv.temp
scoreboard players operation #ck_pct ec.temp /= @s ec.ck_v4
execute if score @s ec.ck_v1 matches 40..60 run data modify storage evercraft:cooking simm_tcolor set value "green"
execute unless score @s ec.ck_v1 matches 40..60 run data modify storage evercraft:cooking simm_tcolor set value "red"
execute store result storage evercraft:cooking simm_temp int 1 run scoreboard players get @s ec.ck_v1
execute store result storage evercraft:cooking simm_pct int 1 run scoreboard players get #ck_pct ec.temp
function evercraft:cooking/minigame/phase2_simmer/update_progress with storage evercraft:cooking
