# Javelin Class — Melee Hit
# Triggered by melee_hit advancement (direct_entity = player, i.e. melee only)

# Re-arm advancement
advancement revoke @s only evercraft:artifacts/javelin/melee_hit

# Verify player is javelin-active
execute unless entity @s[tag=ec.jv_active] run return 0

# Route to melee hit handler
function evercraft:artifacts/javelin/on_melee_hit
