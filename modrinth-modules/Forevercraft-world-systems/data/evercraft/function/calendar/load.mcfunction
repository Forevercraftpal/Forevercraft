# Seasonal Events Calendar — Load
# Random event rotation with 4-day rest between events
# Events: 1=Harvest Festival, 2=Blood Moon, 3=Merchant Caravan, 4=Fishing Derby,
#         5=Meteor Shower, 6=Dimensional Rift, 7=Prosperity Tide, 8=Skyrift Derby

# Calendar state (fake player scores on ec.var)
# #cal_event_id: 0=none, 1=harvest, 2=blood_moon, 3=merchant, 4=fishing_derby,
#               5=meteor_shower, 6=dimensional_rift, 7=prosperity_tide, 8=skyrift_derby
# #cal_active: 1 if an event is currently running
# #cal_event_days: days remaining for current multi-day event
# #cal_rest_days: rest days remaining before next event pick
# #cal_pending: event ID waiting for dusk (2=Blood Moon, 5=Meteor Shower)
# #cal_last1: most recent event ID (anti-repeat)
# #cal_last2: event before last (anti-repeat)
# #cal_blood_moon: 1 during blood moon (checked by patron/boss systems)
# #cal_rift_timer: seconds remaining for Dimensional Rift (10-min timer)
# #cal_rift_count: total Dimensional Rift events fired (for Rift Echo trigger)
# #cal_prosperity: 1 during Prosperity Tide (checked by crate systems)

# Fishing Derby scoring
scoreboard objectives add cal.derby_score dummy "Derby Score"
scoreboard objectives add cal.temp dummy "Calendar Temp"

# Harvest Festival crate bonus (per-player flag for loot table entity_scores)
scoreboard objectives add ec.hf_active dummy

# Initialize state if not set (preserves across /reload)
execute unless score #cal_active ec.var matches 0.. run scoreboard players set #cal_active ec.var 0
execute unless score #cal_event_id ec.var matches 0.. run scoreboard players set #cal_event_id ec.var 0
execute unless score #cal_blood_moon ec.var matches 0.. run scoreboard players set #cal_blood_moon ec.var 0
execute unless score #cal_event_days ec.var matches 0.. run scoreboard players set #cal_event_days ec.var 0
execute unless score #cal_rest_days ec.var matches 0.. run scoreboard players set #cal_rest_days ec.var 4
execute unless score #cal_pending ec.var matches 0.. run scoreboard players set #cal_pending ec.var 0
execute unless score #cal_last1 ec.var matches 0.. run scoreboard players set #cal_last1 ec.var 0
execute unless score #cal_last2 ec.var matches 0.. run scoreboard players set #cal_last2 ec.var 0

# Initialize day/time tracking for transition detection
execute store result score #cal_prev_day ec.var run time query day
execute store result score #cal_cur_day ec.var run time query day
execute store result score #cal_prev_vtime ec.var run time query daytime
execute store result score #cal_cur_vtime ec.var run time query daytime

# FX counters
scoreboard players set #cal_harvest_fx ec.var 0
scoreboard players set #cal_blood_fx ec.var 0
scoreboard players set #cal_meteor_fx ec.var 0
scoreboard players set #cal_rift_fx ec.var 0

# New event state (preserve across /reload)
execute unless score #cal_rift_timer ec.var matches 0.. run scoreboard players set #cal_rift_timer ec.var 0
execute unless score #cal_rift_count ec.var matches 0.. run scoreboard players set #cal_rift_count ec.var 0
execute unless score #cal_prosperity ec.var matches 0.. run scoreboard players set #cal_prosperity ec.var 0

# Bootstrap schedule
schedule function evercraft:calendar/tick 1s replace
