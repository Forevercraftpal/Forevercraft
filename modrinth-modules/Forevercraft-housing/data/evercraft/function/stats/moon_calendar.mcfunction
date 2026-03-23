# Moon Phase Calendar — Displays current moon, season, and next key phases
# Uses #moon_phase and #season_id from ec.var (set by tick)

# Get display names
function evercraft:briefing/get_moon_name
function evercraft:briefing/get_season_name

# Days until next Full Moon (phase 0): (8 - phase) % 8
scoreboard players set #stat_temp ec.temp 8
scoreboard players operation #stat_temp ec.temp -= #moon_phase ec.var
scoreboard players set #8 ec.temp 8
scoreboard players operation #stat_temp ec.temp %= #8 ec.temp
execute store result storage evercraft:stats full_days int 1 run scoreboard players get #stat_temp ec.temp

# Days until next New Moon (phase 4): (12 - phase) % 8
scoreboard players set #stat_temp ec.temp 12
scoreboard players operation #stat_temp ec.temp -= #moon_phase ec.var
scoreboard players operation #stat_temp ec.temp %= #8 ec.temp
execute store result storage evercraft:stats new_days int 1 run scoreboard players get #stat_temp ec.temp

# Season day (0-15 within 16-day seasons): #visual_day % 16 + 1
execute store result score #stat_temp ec.temp run time query day
scoreboard players set #16 ec.temp 16
scoreboard players operation #stat_temp ec.temp %= #16 ec.temp
scoreboard players add #stat_temp ec.temp 1
execute store result storage evercraft:stats season_day int 1 run scoreboard players get #stat_temp ec.temp

# Display
function evercraft:stats/moon_calendar_display with storage evercraft:stats
