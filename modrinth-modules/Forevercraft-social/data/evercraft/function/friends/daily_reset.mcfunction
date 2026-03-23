# Friend System — Daily reset: clear daily_heart flags for all online players
# Called on day change from guild/events/tick or main day-change hook

# For each online player with friends, reset daily flags
execute as @a[scores={ec.fr_count=1..}] run function evercraft:friends/daily_reset_player

# Check title evolution (30+ days held → evolved form)
function evercraft:friends/title/check_evolution
