# Daylight Advance — called when counter reaches 3 ticks
# Advances DayTime and resets counter
# Season-aware: Winter has shorter days, Summer has shorter nights

# Autumn (0) / Spring (2): normal 1x all day
execute if score #season_id ec.var matches 0 run time add 1
execute if score #season_id ec.var matches 2 run time add 1

# Winter (1): day goes 2x fast (shorter day), night is normal (longer night)
execute if score #season_id ec.var matches 1 if score #visual_time ec.var matches ..12999 run time add 2
execute if score #season_id ec.var matches 1 if score #visual_time ec.var matches 13000.. run time add 1

# Summer (3): day is normal (longer day), night goes 2x fast (shorter night)
execute if score #season_id ec.var matches 3 if score #visual_time ec.var matches ..12999 run time add 1
execute if score #season_id ec.var matches 3 if score #visual_time ec.var matches 13000.. run time add 2

scoreboard players set #daylight_counter ec.var 0
