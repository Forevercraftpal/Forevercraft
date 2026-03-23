# Apply name to new laborer from storage array
$# Copy name string from names.$(type)[$(name_idx)] to temp
$data modify storage evercraft:laborers temp.chosen_name set from storage evercraft:laborers names.$(type)[$(name_idx)]
# Set the entity CustomName (need another macro call to interpolate the name)
function evercraft:laborer/hire/set_custom_name with storage evercraft:laborers temp
