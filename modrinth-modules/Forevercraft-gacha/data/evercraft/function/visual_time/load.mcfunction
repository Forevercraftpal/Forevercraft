# Visual Time Tracker — Load/Bootstrap
# Slow daylight: DayTime advances 1 per 3 real ticks
#
# Exposed scoreboards:
#   #visual_time ec.var  — 0-24000, current time-of-day (= daytime)
#   #visual_day  ec.var  — day number (= time query day)
#
# OPT: visual_time/tick removed — luck_buffs/tick already updates these same scores
# on the same 1s schedule (plus dawn/dusk detection). No separate loop needed.

# Constants (others defined in init.mcfunction)
scoreboard players set #24000 ec.const 24000

# Initialize with current values to prevent false triggers
execute store result score #visual_time ec.var run time query daytime
execute store result score #visual_day ec.var run time query day
