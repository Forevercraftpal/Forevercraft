# ============================================================
# Check if Player Should be Exiled
# Called after reputation is saved — if rep < 0, trigger exile
# Run as the player
# ============================================================

# Only trigger if rep has gone below 0
execute unless score @s ec.village_rep matches ..-1 run return fail

# Only if not already exiled
execute if score @s vs.exile matches 1 run return fail

# Only if in a village
execute unless score @s ec.current_village matches 1.. run return fail

# Apply exile lockout
function evercraft:village/exile/apply_lockout
