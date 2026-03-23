# Hero's Satchel Menu — On Slot Click (macro)
# Run as the player. Args from check_clicks: slot (s0-s10), num (display number)

# Store player's bag_id and the clicked slot into temp
execute store result storage evercraft:hero_satchel temp.bid int 1 run scoreboard players get @s ec.hbag_id
$data modify storage evercraft:hero_satchel temp.slot set value "$(slot)"

# Dispatch to handler that reads bid+slot from storage
function evercraft:hero_satchel/menu/handle_click with storage evercraft:hero_satchel temp
