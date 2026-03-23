# Leave Party — Member leaves the group
# Run as the leaving player

# Can't leave if not in a party
execute if score @s ec.party_id matches 0 run return run tellraw @s {text:"You're not in a party.",color:"red"}

# Store party ID for announcement
execute store result storage evercraft:party temp.pid int 1 run scoreboard players get @s ec.party_id

# Announce to party before clearing
function evercraft:party/menu/leave_announce with storage evercraft:party temp

# Clean up party state
function evercraft:party/cleanup_player

# Update remaining party member counts
function evercraft:party/menu/leave_update with storage evercraft:party temp
