# Guild Event — Weekly: Check for pending rewards on player join
# @s = player who just joined
# Checks storage for any queued rewards for this player

# Skip if not in a guild
execute unless score @s ec.guild_id matches 1.. run return 0

# Check if there are any pending entries
execute unless data storage evercraft:guild_events pending[0] run return 0

# Store player's name for comparison
data modify storage evercraft:guild_events check_name set from entity @s CustomName

# Scan pending rewards (iterate via temp list)
function evercraft:guild/events/weekly/scan_pending
