# Friend System — Macro: daily reset for one player's friend list
# Macro args: reset_uuid3
# Single pass: evaluate gift streaks using current flags, then clear daily_heart + sent_gift_today
# The streak loop handles everything: read flags, update streaks, clear flags, write back

# Copy list for single-pass streak eval + reset
$data modify storage evercraft:friends temp.streak_src_list set from storage evercraft:friends "u$(reset_uuid3)".friends

# Run combined streak eval + flag clearing (daily_reset_streak writes back to storage)
function evercraft:friends/daily_reset_streak with storage evercraft:friends temp

# Update last_daily_day for login catchup
$execute store result storage evercraft:friends "u$(reset_uuid3)".last_daily_day int 1 run scoreboard players get #visual_day ec.var
