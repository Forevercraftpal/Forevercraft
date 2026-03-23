# Satchel Menu — On Slot Click (macro)
# Run as the player. Args from check_clicks: slot (s0-s6), num (display number)
# Writes slot to temp, then dispatches to a handler that reads both bid+slot from storage

# Store player's bag_id and the clicked slot into temp
execute store result storage evercraft:satchel temp.bid int 1 run scoreboard players get @s ec.bag_id
$data modify storage evercraft:satchel temp.slot set value "$(slot)"

# Dispatch to handler that reads bid+slot from storage
function evercraft:satchel/menu/handle_click with storage evercraft:satchel temp
