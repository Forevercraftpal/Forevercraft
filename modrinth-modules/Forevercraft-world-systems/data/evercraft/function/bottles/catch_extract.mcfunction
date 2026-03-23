# Macro: Extract selected message and display it
$data modify storage evercraft:bottles caught set from storage evercraft:bottles pool[$(idx)]

# Read common fields into scores for display
execute store result score #bottle_day ec.temp run data get storage evercraft:bottles caught.day
execute store result score #bottle_biome ec.temp run data get storage evercraft:bottles caught.biome

# Read old msg field (0 if not present = new format entry)
execute store result score #bottle_msg ec.temp run data get storage evercraft:bottles caught.msg

# Display
function evercraft:bottles/catch_display
