# Tag nearby party members as dungeon participants
# Run as the player who started the dungeon

# Store party ID for macro
execute store result storage evercraft:party temp.pid int 1 run scoreboard players get @s ec.party_id

# Tag nearby party members within 48 blocks
function evercraft:party/dungeon/tag_party_macro with storage evercraft:party temp
