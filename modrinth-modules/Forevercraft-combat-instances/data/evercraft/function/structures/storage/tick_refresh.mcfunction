# Tick refresh timers on all looted markers
# Runs every 200 ticks (10 seconds) via schedule
# Checks game-time-based expiry, converts to refresh_marker when expired

# ALWAYS re-schedule first so the loop never dies (even on early exit or error)
schedule function evercraft:structures/storage/tick_refresh 200t

# Early exit if no looted markers exist (schedule is already set above)
execute unless entity @e[type=marker,tag=cf.looted_marker,limit=1] run return 0

# Process all looted markers in loaded chunks
execute as @e[type=marker,tag=cf.looted_marker] run function evercraft:structures/storage/tick_single_marker
