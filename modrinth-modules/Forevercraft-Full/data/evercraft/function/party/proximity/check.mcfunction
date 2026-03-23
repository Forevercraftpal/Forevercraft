# Party Proximity Check — Count nearby party members
# Run as each player in a party, at their position
# Uses macro to dynamically match party_id

# Store own party ID to storage for macro
execute store result storage evercraft:party temp.pid int 1 run scoreboard players get @s ec.party_id

# Call macro to count matching players within 48 blocks
function evercraft:party/proximity/count_macro with storage evercraft:party temp
