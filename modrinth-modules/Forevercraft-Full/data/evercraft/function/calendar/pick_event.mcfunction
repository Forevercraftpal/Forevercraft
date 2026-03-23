# Calendar — Pick Next Event
# Random selection with anti-repeat buffer (can't repeat last 2 events)
# Uses random value 1..8, validates against #cal_last1/#cal_last2
# 4 random attempts, then deterministic fallback

scoreboard players set #cal_pick_ok cal.temp 0

# --- Attempt 1 ---
execute if score #cal_pick_ok cal.temp matches 0 store result score #cal_pick cal.temp run random value 1..8
execute if score #cal_pick_ok cal.temp matches 0 unless score #cal_pick cal.temp = #cal_last1 ec.var unless score #cal_pick cal.temp = #cal_last2 ec.var run scoreboard players set #cal_pick_ok cal.temp 1

# --- Attempt 2 ---
execute if score #cal_pick_ok cal.temp matches 0 store result score #cal_pick cal.temp run random value 1..8
execute if score #cal_pick_ok cal.temp matches 0 unless score #cal_pick cal.temp = #cal_last1 ec.var unless score #cal_pick cal.temp = #cal_last2 ec.var run scoreboard players set #cal_pick_ok cal.temp 1

# --- Attempt 3 ---
execute if score #cal_pick_ok cal.temp matches 0 store result score #cal_pick cal.temp run random value 1..8
execute if score #cal_pick_ok cal.temp matches 0 unless score #cal_pick cal.temp = #cal_last1 ec.var unless score #cal_pick cal.temp = #cal_last2 ec.var run scoreboard players set #cal_pick_ok cal.temp 1

# --- Attempt 4 ---
execute if score #cal_pick_ok cal.temp matches 0 store result score #cal_pick cal.temp run random value 1..8
execute if score #cal_pick_ok cal.temp matches 0 unless score #cal_pick cal.temp = #cal_last1 ec.var unless score #cal_pick cal.temp = #cal_last2 ec.var run scoreboard players set #cal_pick_ok cal.temp 1

# --- Deterministic fallback if all random rolls failed ---
execute if score #cal_pick_ok cal.temp matches 0 run function evercraft:calendar/pick_fallback

# === Update anti-repeat buffer ===
scoreboard players operation #cal_last2 ec.var = #cal_last1 ec.var
scoreboard players operation #cal_last1 ec.var = #cal_pick cal.temp

# === Route to event start (via omen warning system) ===
# Immediate-start events: set omen timer (60s = chat warning, then 30s particles, then start)
execute if score #cal_pick cal.temp matches 1 run scoreboard players set #cal_omen_id ec.var 1
execute if score #cal_pick cal.temp matches 3 run scoreboard players set #cal_omen_id ec.var 3
execute if score #cal_pick cal.temp matches 4 run scoreboard players set #cal_omen_id ec.var 4
execute if score #cal_pick cal.temp matches 6 run scoreboard players set #cal_omen_id ec.var 6
execute if score #cal_pick cal.temp matches 7 run scoreboard players set #cal_omen_id ec.var 7
execute if score #cal_pick cal.temp matches 8 run scoreboard players set #cal_omen_id ec.var 8
# If omen was set (immediate events), start the 60s timer + chat warning
execute if score #cal_omen_id ec.var matches 1.. run scoreboard players set #cal_omen_timer ec.var 60
execute if score #cal_omen_id ec.var matches 1.. run function evercraft:omens/calendar/chat_warning

# Night-gated events: set pending (omen plays at pre-dusk, starts at dusk)
execute if score #cal_pick cal.temp matches 2 run scoreboard players set #cal_pending ec.var 2
execute if score #cal_pick cal.temp matches 5 run scoreboard players set #cal_pending ec.var 5
# Reset night warned flag so omen fires for this pending event
execute if score #cal_pick cal.temp matches 2 run scoreboard players set #cal_night_warned ec.var 0
execute if score #cal_pick cal.temp matches 5 run scoreboard players set #cal_night_warned ec.var 0
