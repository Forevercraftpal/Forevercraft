# Javelin Class — Thrown Trident Hit
# Triggered by thrown_hit advancement (is_projectile damage type tag)

# Re-arm advancement
advancement revoke @s only evercraft:artifacts/javelin/thrown_hit

# Verify player is javelin-active
execute unless entity @s[tag=ec.jv_active] run return 0

# === PROJECTILE HIT TING ===
playsound minecraft:entity.arrow.hit_player player @s

# Route to thrown hit handler
function evercraft:artifacts/javelin/on_thrown_hit
