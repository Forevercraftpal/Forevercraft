# Guild Diplomacy — Remove alliance entry from target marker (reverse direction)
# Run as: target guild marker entity
# $(remove_id) = guild ID to remove from this marker's alliances

data modify storage evercraft:guild temp.ally_list set from entity @s data.alliances
data modify entity @s data.alliances set value []
data modify storage evercraft:guild temp.target_id set from storage evercraft:guild temp.remove_id
function evercraft:guild/diplomacy/alliance/rebuild_step
