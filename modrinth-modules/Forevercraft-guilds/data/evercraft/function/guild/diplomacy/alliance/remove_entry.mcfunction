# Guild Diplomacy — Remove alliance entry from marker
# Run as: guild marker entity
# $(target_id) = guild ID to remove from alliances list
# Uses pop-and-rebuild: copy list to storage, clear, re-add non-matching entries

data modify storage evercraft:guild temp.ally_list set from entity @s data.alliances
data modify entity @s data.alliances set value []

# Process each entry — re-add if not the target
function evercraft:guild/diplomacy/alliance/rebuild_step
