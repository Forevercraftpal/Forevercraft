# Seasonal System — Update season from visual_day
# Called at dawn (from calendar/dawn_check)
# Calculates season_id (0-3) and season_day (0-15) from #visual_day ec.var

# day_in_year = visual_day % 64
scoreboard players operation #season_calc ec.temp = #visual_day ec.var
scoreboard players operation #season_calc ec.temp %= #64 ec.const

# season_day = day_in_year % 16
scoreboard players operation #season_day ec.var = #season_calc ec.temp
scoreboard players operation #season_day ec.var %= #16 ec.const

# season_id = day_in_year / 16
scoreboard players operation #season_id ec.var = #season_calc ec.temp
scoreboard players operation #season_id ec.var /= #16 ec.const

# Detect season transition
execute unless score #season_id ec.var = #season_prev ec.var run function evercraft:seasons/on_change
scoreboard players operation #season_prev ec.var = #season_id ec.var
