# Seasonal Events Calendar — Main Tick (1s schedule)
# Detects day/dusk transitions and routes to active event ticks

# Early exit if no players
execute unless entity @a run return run schedule function evercraft:calendar/tick 1s

# Save previous state for transition detection
scoreboard players operation #cal_prev_day ec.var = #cal_cur_day ec.var
scoreboard players operation #cal_prev_vtime ec.var = #cal_cur_vtime ec.var

# Get current state (OPT: read from visual_time/tick cache — avoids 2 time queries)
scoreboard players operation #cal_cur_day ec.var = #visual_day ec.var
scoreboard players operation #cal_cur_vtime ec.var = #visual_time ec.var

# === DAWN DETECTION (day number changed) ===
execute unless score #cal_cur_day ec.var = #cal_prev_day ec.var run function evercraft:calendar/dawn_check

# === DUSK DETECTION (visual_time crossed 13000 = nightfall) ===
# Pending Blood Moon activates at dusk
execute if score #cal_prev_vtime ec.var matches ..12999 if score #cal_cur_vtime ec.var matches 13000.. run function evercraft:calendar/dusk_check

# === CALENDAR OMEN TICK (pre-event warning countdown) ===
execute if score #cal_omen_timer ec.var matches 1.. run function evercraft:omens/calendar/tick

# === NIGHT-GATED OMEN: Pre-dusk chat warning for Blood Moon / Meteor Shower ===
# Fires once when DayTime crosses 12400 (~30s before dusk at 13000)
execute if score #cal_pending ec.var matches 1.. if score #cal_prev_vtime ec.var matches ..12399 if score #cal_cur_vtime ec.var matches 12400.. run scoreboard players operation #cal_omen_id ec.var = #cal_pending ec.var
execute if score #cal_pending ec.var matches 1.. if score #cal_prev_vtime ec.var matches ..12399 if score #cal_cur_vtime ec.var matches 12400.. run function evercraft:omens/calendar/chat_warning

# === ACTIVE EVENT TICK ===
# OPT: Single #cal_active gate → dispatch function (was 8 redundant checks)
execute if score #cal_active ec.var matches 1 run function evercraft:calendar/event_dispatch

# Reschedule
schedule function evercraft:calendar/tick 1s
