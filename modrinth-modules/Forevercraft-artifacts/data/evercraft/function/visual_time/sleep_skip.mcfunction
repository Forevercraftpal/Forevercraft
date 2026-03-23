# Sleep Skip — advance remaining night to dawn
# Called from luck_buffs/tick when a time jump is detected and it's still night
# With slow daylight, daytime IS visual_time — skip to next daytime 0

# Calculate ticks needed to reach dawn (daytime 0)
scoreboard players set #skip_ticks ec.var 24000
scoreboard players operation #skip_ticks ec.var -= #visual_time ec.var

# Store for macro and execute time add
execute store result storage evercraft:visual_time skip_ticks int 1 run scoreboard players get #skip_ticks ec.var
function evercraft:visual_time/do_time_add with storage evercraft:visual_time

# Recompute all time scores after the skip
execute store result score #visual_time ec.var run time query daytime
execute store result score #visual_day ec.var run time query day
scoreboard players operation #moon_phase ec.var = #visual_day ec.var
scoreboard players operation #moon_phase ec.var %= #8 ec.const
