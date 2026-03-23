# Guidestone — Macro: check if destination ID is in player's unlock list
# Macro args: uuid3 (player), dest_id (destination guidestone ID)
# Sets #gs_unlocked ec.gs_temp to 1 if unlocked, 0 if not

scoreboard players set #gs_unlocked ec.gs_temp 0
$execute if data storage evercraft:guidestone unlocked."$(uuid3)"[{id:$(dest_id)}] run scoreboard players set #gs_unlocked ec.gs_temp 1
