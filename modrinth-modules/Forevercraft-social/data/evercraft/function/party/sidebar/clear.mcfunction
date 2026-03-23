# Clear party sidebar display for this player
# Called when a player leaves a party

# Remove their health entry from the sidebar
scoreboard players reset @s ec.party_hp

# If no parties remain, hide the sidebar entirely
function evercraft:party/sidebar/check_any_party
