# ============================================================
# Guild Events — Load
# Initialize state variables and start event tick schedule
# ============================================================

# === GLOBAL STATE (fake players on ec.var, preserve across reloads) ===
# Noon event
execute unless score #ge_noon_active ec.var matches 0.. run scoreboard players set #ge_noon_active ec.var 0
execute unless score #ge_noon_timer ec.var matches 0.. run scoreboard players set #ge_noon_timer ec.var 0
execute unless score #ge_last_noon_day ec.var matches 0.. run scoreboard players set #ge_last_noon_day ec.var -1

# Weekly contribution event
execute unless score #ge_weekly_day ec.var matches 0.. run scoreboard players set #ge_weekly_day ec.var 0
execute unless score #ge_weekly_started ec.var matches 0.. run scoreboard players set #ge_weekly_started ec.var 0

# Node scatter event
execute unless score #ge_scatter_day ec.var matches 0.. run scoreboard players set #ge_scatter_day ec.var 0
execute unless score #ge_scatter_active ec.var matches 0.. run scoreboard players set #ge_scatter_active ec.var 0
execute unless score #ge_scatter_timer ec.var matches 0.. run scoreboard players set #ge_scatter_timer ec.var 0

# If weekly day is 0 (first load), initialize from current day
execute if score #ge_weekly_day ec.var matches 0 run scoreboard players operation #ge_weekly_day ec.var = #visual_day ec.var
execute if score #ge_scatter_day ec.var matches 0 run scoreboard players operation #ge_scatter_day ec.var = #visual_day ec.var

# Expedition system
function evercraft:guild/expedition/load

# Start event tick schedule (1s loop)
schedule function evercraft:guild/events/tick 1s
