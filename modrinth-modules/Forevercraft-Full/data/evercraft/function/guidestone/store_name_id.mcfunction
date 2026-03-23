# Guidestone — Set default name based on display number
# Macro args: display_num (count of existing guidestones + 1)
$data modify storage evercraft:guidestone temp.name set value "Waypoint #$(display_num)"
