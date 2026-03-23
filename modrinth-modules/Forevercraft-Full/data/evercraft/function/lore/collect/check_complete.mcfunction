# Lore Collect: Check if set is now complete (macro)
# Compare player's piece count against required pieces

# Copy set_idx → set_id so read_set_meta resolves the correct set
$data modify storage evercraft:lore temp.set_id set value $(set_idx)

# Read set metadata
function evercraft:lore/roll/read_set_meta with storage evercraft:lore temp

# Get required pieces
execute store result score #lore_req ec.temp run data get storage evercraft:lore temp.set_meta.pieces

# Get player's count for this set
$execute store result score #lore_have ec.temp run scoreboard players get @s ec.ls_$(set_idx)

# If have >= required, set is complete!
execute unless score #lore_have ec.temp >= #lore_req ec.temp run return 0

# === SET COMPLETE! ===
function evercraft:lore/collect/set_complete with storage evercraft:lore temp
