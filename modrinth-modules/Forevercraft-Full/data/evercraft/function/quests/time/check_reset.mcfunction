# ============================================================
# Check for dawn reset (day change detection)
# Slow daylight: day number increments every 72000 real ticks.
# Fires exactly once per day.
# ============================================================

# If day changed → fire daily reset
execute unless score #quest_visual_day ec.var = #quest_prev_visual_day ec.var unless score #quest_reset_today ec.var matches 1 run function evercraft:quests/reset/daily

# Clear reset flag after 2000 DayTime ticks into the new day
execute store result score #quest_time ec.var run time query daytime
execute if score #quest_time ec.var matches 2000..12000 if score #quest_reset_today ec.var matches 1 run scoreboard players set #quest_reset_today ec.var 0
