# Party Menu — Member Options
# Show leave, ping

execute store result storage evercraft:party temp.size int 1 run scoreboard players get @s ec.party_size
function evercraft:party/menu/show_member_macro with storage evercraft:party temp
