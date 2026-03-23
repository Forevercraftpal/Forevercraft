# Hero's Satchel Menu — Refresh slot displays
# Run as player with menu open.

# Get bag_id into temp
execute store result storage evercraft:hero_satchel temp.bid int 1 run scoreboard players get @s ec.hbag_id

# Update each slot's text display via macro
function evercraft:hero_satchel/menu/refresh_slots with storage evercraft:hero_satchel temp
