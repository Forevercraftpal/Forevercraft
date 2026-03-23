# Nite — Per-Tick Processing
# Run as @s at @s when holding spirit weapon ID 5

# === DIMENSIONAL RIFT ACTIVE ===
# Rift markers damage entities that pass through
execute if entity @e[tag=ec.sp_rift_marker,limit=1,distance=..30] run function evercraft:spirit/abilities/nite/rift_tick

# === BLADE STORM ACTIVE ===
execute if entity @s[tag=ec.sp_blade_storm] run function evercraft:spirit/abilities/nite/blade_storm_tick
