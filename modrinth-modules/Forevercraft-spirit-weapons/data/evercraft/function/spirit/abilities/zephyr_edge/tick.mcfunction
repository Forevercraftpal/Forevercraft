# Zephyr Edge — Per-Tick Processing
# Run as @s at @s when holding spirit weapon ID 4
# Passives: +20% speed (handled in detect), airborne 2x damage (on hit)
# Active: Cyclone state, Zephyr Dance charges

# === CYCLONE ACTIVE ===
execute if entity @s[tag=ec.sp_cyclone_active] run function evercraft:spirit/abilities/zephyr_edge/cyclone_tick

# === ZEPHYR DANCE CHARGES ===
# Charges are consumed on next hit (tracked via on_hit advancement)
