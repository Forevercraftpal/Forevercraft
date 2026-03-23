# Calendar Omen — Timer Expired, Start Actual Event
# Route to the real event start based on omen ID

execute if score #cal_omen_id ec.var matches 1 run function evercraft:calendar/events/harvest_festival/start
execute if score #cal_omen_id ec.var matches 3 run function evercraft:calendar/events/merchant_caravan/start
execute if score #cal_omen_id ec.var matches 4 run function evercraft:calendar/events/fishing_derby/start
execute if score #cal_omen_id ec.var matches 6 run function evercraft:calendar/events/dimensional_rift/start
execute if score #cal_omen_id ec.var matches 7 run function evercraft:calendar/events/prosperity_tide/start
execute if score #cal_omen_id ec.var matches 8 run function evercraft:mount_training/skyrift/start

# Clear omen state
scoreboard players set #cal_omen_id ec.var 0
scoreboard players set #cal_omen_timer ec.var 0
