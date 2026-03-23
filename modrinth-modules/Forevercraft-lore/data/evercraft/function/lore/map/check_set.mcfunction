# Lore Map — Check single set (macro)
# Args: $(scan_idx) — set index to check
# Run as: the triggering player

# Get player's collected piece count for this set
$execute store result score #lore_have ec.temp run scoreboard players get @s ec.ls_$(scan_idx)

# Skip if player has 0 pieces (not started)
execute if score #lore_have ec.temp matches ..0 run return 0

# Get required pieces from set metadata
$execute store result score #lore_req ec.temp run data get storage evercraft:lore sets.s$(scan_idx).pieces

# Skip if complete (have >= required)
execute unless score #lore_have ec.temp < #lore_req ec.temp run return 0

# This set is in-progress — display it
$function evercraft:lore/map/show_set with storage evercraft:lore sets.s$(scan_idx)
