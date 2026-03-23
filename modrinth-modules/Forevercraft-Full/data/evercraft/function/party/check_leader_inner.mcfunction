# Check if this member's party still has an online leader
# Run as a party member (role=2)

# Store own party ID for macro
execute store result storage evercraft:party temp.pid int 1 run scoreboard players get @s ec.party_id

# Check if any online player has matching party_id AND role=1 (leader)
function evercraft:party/check_leader_macro with storage evercraft:party temp
