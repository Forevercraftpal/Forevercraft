# Showcase — Save pin to player storage (macro)
# $(self_uuid3), $(save_slot)
# Reads temp.picked_entry for the achievement data

$data modify storage evercraft:showcase "u$(self_uuid3)".pins[$(save_slot)] set from storage evercraft:showcase temp.picked_entry
