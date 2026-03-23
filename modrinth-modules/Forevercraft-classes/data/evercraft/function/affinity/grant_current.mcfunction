# === GRANT AFFINITY XP FOR CURRENT HELD CLASS ===
# Caller sets #delta ec.temp BEFORE calling this
# Run as the player who should receive affinity
# Exits early if no class weapon held

execute unless score @s ec.aff_class matches 1.. run return 0
function evercraft:affinity/internal_grant
