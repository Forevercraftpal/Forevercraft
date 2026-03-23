# ============================================================
# EVERCRAFT QUEST SYSTEM — Main Tick (runs every 1s via schedule)
# Slow daylight: day number = time query day (no /3 needed)
# ============================================================

# Gate: skip if no players online
execute unless entity @a run return run schedule function evercraft:quests/tick 1s replace

# Track day number for dawn/reset detection
scoreboard players operation #quest_prev_visual_day ec.var = #quest_visual_day ec.var
execute store result score #quest_visual_day ec.var run time query day

# Time checks (reset at dawn, gifts at noon)
function evercraft:quests/time/check_reset
function evercraft:quests/time/check_noon

# Heroic quest expiry (7-day timer)
execute as @a[scores={ec.quest_id_6=1..}] run function evercraft:quests/heroic/check_expiry

# OPT: Toggle for 2s quest progress tracking (halves clear @s inventory scans)
scoreboard players add #q_alt ec.var 1
execute if score #q_alt ec.var matches 2.. run scoreboard players set #q_alt ec.var 0

# OPT: Per-player quest processing batched (4 @a scans → 1)
execute as @a at @s run function evercraft:quests/player_tick

# Self-schedule every 1 second (20 ticks)
schedule function evercraft:quests/tick 1s replace
