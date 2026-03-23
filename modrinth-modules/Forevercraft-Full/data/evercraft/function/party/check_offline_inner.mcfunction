# Store own party ID for macro
execute store result storage evercraft:party temp.pid int 1 run scoreboard players get @s ec.party_id
function evercraft:party/check_offline_macro with storage evercraft:party temp
