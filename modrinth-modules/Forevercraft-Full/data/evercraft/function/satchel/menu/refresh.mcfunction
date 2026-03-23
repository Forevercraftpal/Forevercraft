# Satchel Menu — Refresh slot displays
# Run as player with menu open. Reads storage to update text_display entities.

# Get bag_id into temp
execute store result storage evercraft:satchel temp.bid int 1 run scoreboard players get @s ec.bag_id

# Update each slot's text display via macro
function evercraft:satchel/menu/refresh_slots with storage evercraft:satchel temp
