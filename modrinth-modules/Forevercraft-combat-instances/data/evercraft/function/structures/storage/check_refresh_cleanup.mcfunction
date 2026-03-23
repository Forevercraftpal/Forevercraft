# Clean up expired refresh markers at the current position for this player
# Run at the check_pos position, as the player (cf.checking_player)
# Kills matching cf.refresh_marker entities and removes from Ruin Watch storage

# Find refresh markers belonging to this player and tag for removal
scoreboard players set #refresh_match cf.temp 0
execute as @e[type=marker,tag=cf.refresh_marker,distance=..1] run function evercraft:structures/storage/check_refresh_marker

# NOTE: Do NOT call reset_vault_block here! This cleanup runs during spawn_loot
# (i.e., when the player is actively re-looting). The vault was already reset by
# tick_single_marker/check_timer_marker when the timer expired. Calling reset again
# here would clear the rewarded_players entry that vanilla JUST added, allowing
# the player to open the vault a second time.

# Kill any consumed markers
execute as @e[type=marker,tag=cf.refresh_consumed,distance=..1] run kill @s

# Remove from Ruin Watch storage if match was found
execute if score #refresh_match cf.temp matches 1 if data storage evercraft:ruin_watch ready_crates[0] run function evercraft:structures/storage/remove_ready
