# Check if target player is online
# Macro: $(target_cid)

scoreboard players set #tp_online ec.temp 0
$execute if entity @a[scores={companion.id=$(target_cid)}] run scoreboard players set #tp_online ec.temp 1
