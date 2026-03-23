# Check if a refresh marker at this position belongs to the current player
# If so, load struct_id from it and proceed to roll tier + spawn loot
# Run as the player with position at the chest

# Find refresh markers within 1 block and check UUID match
tag @s add cf.checking_player
scoreboard players set #refresh_match cf.temp 0

# Check each refresh marker nearby
execute as @e[type=marker,tag=cf.refresh_marker,distance=..1] run function evercraft:structures/storage/check_refresh_marker

tag @s remove cf.checking_player

# If no matching refresh marker found for this player, skip
execute if score #refresh_match cf.temp matches 0 run return 0

# Match found! struct_id was loaded into cf.struct_id by check_refresh_marker
# NOTE: Do NOT reset vault block here — it was already reset when the timer expired.
# Resetting again during re-loot would clear rewarded_players that vanilla just added.

# Remove the consumed refresh marker (it will be replaced by a new looted marker)
execute as @e[type=marker,tag=cf.refresh_consumed,distance=..1] run kill @s

# Also remove from storage ready_crates (Ruin Watch persistence)
execute if data storage evercraft:ruin_watch ready_crates[0] run function evercraft:structures/storage/remove_ready

# Proceed with tier rolling and loot spawn (same as normal chest flow)
execute positioned ~ ~ ~ run function evercraft:structures/interact/check_looted_then_spawn
