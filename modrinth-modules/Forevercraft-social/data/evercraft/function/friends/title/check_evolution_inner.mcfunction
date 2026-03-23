# Friend Title — Macro: check evolution for player's titles_received
# Macro args: evo_uuid3, evo_cid

# Ensure titles_received exists
$execute unless data storage evercraft:friends "u$(evo_uuid3)".titles_received run return 0
$execute unless data storage evercraft:friends "u$(evo_uuid3)".titles_received[0] run return 0

# Copy to temp for iteration
$data modify storage evercraft:friends temp.evo_list set from storage evercraft:friends "u$(evo_uuid3)".titles_received
data modify storage evercraft:friends temp.evo_result set value []
scoreboard players set #fr_evo_changed ec.temp 0

# Get current day for age comparison
execute store result score #fr_evo_today ec.temp run time query day

function evercraft:friends/title/evolution_loop

# Write back if changed
$execute if score #fr_evo_changed ec.temp matches 1.. run data modify storage evercraft:friends "u$(evo_uuid3)".titles_received set from storage evercraft:friends temp.evo_result
# If no changes, still write back (harmless)
$execute unless score #fr_evo_changed ec.temp matches 1.. run data modify storage evercraft:friends "u$(evo_uuid3)".titles_received set from storage evercraft:friends temp.evo_result
