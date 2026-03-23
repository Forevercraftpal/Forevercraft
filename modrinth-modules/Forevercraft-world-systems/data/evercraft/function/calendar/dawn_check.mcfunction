# Calendar — Dawn Check
# Called when visual_day changes (new dawn)
# State machine: stop active events, count down rest, pick new events

# Update season tracking
function evercraft:seasons/update

# Daily profession special (runs every dawn, before event handling which may return early)
function evercraft:professions/daily_special/pick

# Snapshot current state before stop functions clear it
scoreboard players operation #cal_was_active cal.temp = #cal_active ec.var
scoreboard players operation #cal_was_event cal.temp = #cal_event_id ec.var

# === 1. Night-only events always end at dawn (unconditional) ===
# Blood Moon
execute if score #cal_was_active cal.temp matches 1 if score #cal_was_event cal.temp matches 2 run function evercraft:calendar/events/blood_moon/stop
execute if score #cal_was_active cal.temp matches 1 if score #cal_was_event cal.temp matches 2 run return 0
# Meteor Shower
execute if score #cal_was_active cal.temp matches 1 if score #cal_was_event cal.temp matches 5 run function evercraft:calendar/events/meteor_shower/stop
execute if score #cal_was_active cal.temp matches 1 if score #cal_was_event cal.temp matches 5 run return 0
# Dimensional Rift (safety stop — normally ends via timer, but dawn catches stragglers)
execute if score #cal_was_active cal.temp matches 1 if score #cal_was_event cal.temp matches 6 run function evercraft:calendar/events/dimensional_rift/stop
execute if score #cal_was_active cal.temp matches 1 if score #cal_was_event cal.temp matches 6 run return 0

# === 2. Other active events: count down days ===
execute if score #cal_was_active cal.temp matches 1 run scoreboard players remove #cal_event_days ec.var 1
execute if score #cal_was_active cal.temp matches 1 if score #cal_event_days ec.var matches ..0 if score #cal_was_event cal.temp matches 1 run function evercraft:calendar/events/harvest_festival/stop
execute if score #cal_was_active cal.temp matches 1 if score #cal_event_days ec.var matches ..0 if score #cal_was_event cal.temp matches 3 run function evercraft:calendar/events/merchant_caravan/stop
execute if score #cal_was_active cal.temp matches 1 if score #cal_event_days ec.var matches ..0 if score #cal_was_event cal.temp matches 4 run function evercraft:calendar/events/fishing_derby/stop
execute if score #cal_was_active cal.temp matches 1 if score #cal_event_days ec.var matches ..0 if score #cal_was_event cal.temp matches 7 run function evercraft:calendar/events/prosperity_tide/stop
execute if score #cal_was_active cal.temp matches 1 if score #cal_event_days ec.var matches ..0 if score #cal_was_event cal.temp matches 8 run function evercraft:mount_training/skyrift/stop
# Whether event continued or just stopped, exit here
execute if score #cal_was_active cal.temp matches 1 run return 0

# === 3. Night-gated event pending — waiting for dusk, skip rest countdown ===
execute if score #cal_pending ec.var matches 1.. run return 0

# === 4. Rest period: count down and pick when ready ===
scoreboard players remove #cal_rest_days ec.var 1
execute if score #cal_rest_days ec.var matches ..0 run function evercraft:calendar/pick_event
