# ============================================================
# Get Village Specialization
# Loads the specialization for the player's current village
# Sets #vs_current_spec vs.temp (0=none, 1-6=specialization)
# Run as the player
# ============================================================

# Default to 0 (no specialization)
scoreboard players set #vs_current_spec vs.temp 0

# Skip if not in a village
execute unless score @s ec.current_village matches 1.. run return fail

# Load from storage via macro
execute store result storage eden:temp vs.vid int 1 run scoreboard players get @s ec.current_village
function evercraft:village/specialization/get_spec_macro with storage eden:temp vs
