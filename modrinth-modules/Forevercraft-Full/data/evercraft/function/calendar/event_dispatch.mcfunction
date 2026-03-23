# Calendar — Active Event Dispatch
# OPT: #cal_active check done once in caller, not 8 times here

execute if score #cal_event_id ec.var matches 1 run function evercraft:calendar/events/harvest_festival/tick
execute if score #cal_event_id ec.var matches 2 run function evercraft:calendar/events/blood_moon/tick
execute if score #cal_event_id ec.var matches 3 run function evercraft:calendar/events/merchant_caravan/tick
execute if score #cal_event_id ec.var matches 4 run function evercraft:calendar/events/fishing_derby/tick
execute if score #cal_event_id ec.var matches 5 run function evercraft:calendar/events/meteor_shower/tick
execute if score #cal_event_id ec.var matches 6 run function evercraft:calendar/events/dimensional_rift/tick
# Prosperity Tide (7): apply luck modifier to late joiners
# OPT: Tag-gated — skip players who already have the modifier applied
execute if score #cal_event_id ec.var matches 7 as @a[tag=!ec.cal_prosperity] run attribute @s luck modifier add ec_cal_prosperity 1.0 add_value
execute if score #cal_event_id ec.var matches 7 run tag @a add ec.cal_prosperity
# Skyrift Derby (8): checkpoint detection, timer, particles
execute if score #cal_event_id ec.var matches 8 run function evercraft:mount_training/skyrift/tick
