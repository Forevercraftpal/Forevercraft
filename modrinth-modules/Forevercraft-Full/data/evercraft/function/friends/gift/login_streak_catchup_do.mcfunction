# Friend Gift — Macro: check and process missed daily resets on login
# Macro args: catchup_uuid3

# Exit if no friend data exists
$execute unless data storage evercraft:friends "u$(catchup_uuid3)" run return 0
$execute unless data storage evercraft:friends "u$(catchup_uuid3)".friends[0] run return 0

# Guard: if #visual_day hasn't been set yet (first tick not run), skip catchup
execute unless score #visual_day ec.var matches 0.. run return 0

# Read last_daily_day (default 0 if field doesn't exist yet)
scoreboard players set #fr_cu_last_day ec.temp 0
$execute if data storage evercraft:friends "u$(catchup_uuid3)".last_daily_day store result score #fr_cu_last_day ec.temp run data get storage evercraft:friends "u$(catchup_uuid3)".last_daily_day

# Initialize last_daily_day field if it doesn't exist (first login after update)
$execute unless data storage evercraft:friends "u$(catchup_uuid3)".last_daily_day run data modify storage evercraft:friends "u$(catchup_uuid3)".last_daily_day set value 0

# Calculate days missed
scoreboard players operation #fr_cu_missed ec.temp = #visual_day ec.var
scoreboard players operation #fr_cu_missed ec.temp -= #fr_cu_last_day ec.temp

# No missed days: nothing to do
execute if score #fr_cu_missed ec.temp matches ..0 run return 0

# If missed more than 1 day: all streaks must reset (no mutual exchange possible)
execute if score #fr_cu_missed ec.temp matches 2.. run function evercraft:friends/gift/login_streak_reset_all with storage evercraft:friends temp

# If missed exactly 1 day: run normal daily reset for this player
# (evaluates sent_gift_today flags and updates streaks)
execute if score #fr_cu_missed ec.temp matches 1 run function evercraft:friends/daily_reset_player

# Update last_daily_day
$execute store result storage evercraft:friends "u$(catchup_uuid3)".last_daily_day int 1 run scoreboard players get #visual_day ec.var
