# Party Menu — Leader Options
# Show invite, disband, ping, and member list

execute store result storage evercraft:party temp.size int 1 run scoreboard players get @s ec.party_size
function evercraft:party/menu/show_leader_macro with storage evercraft:party temp
