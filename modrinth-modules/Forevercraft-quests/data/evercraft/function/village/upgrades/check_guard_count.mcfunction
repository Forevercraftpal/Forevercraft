# ============================================================
# Check Guard Count for an Upgraded Village
# Run as the village marker, at its position
# Respawns guards if fewer than 2 are alive nearby
# ============================================================

# Count VS.Guard iron golems within 80 blocks
execute store result score #vs_guard_count vs.temp if entity @e[type=iron_golem,tag=VS.Guard,distance=..80]

# If 2+ guards alive, all good
execute if score #vs_guard_count vs.temp matches 2.. run return fail

# Spawn guards to fill back up to 2
# If 0 guards: spawn 2
execute if score #vs_guard_count vs.temp matches 0 positioned ~5 ~ ~3 run function evercraft:village/upgrades/spawn_guard
execute if score #vs_guard_count vs.temp matches 0 positioned ~-5 ~ ~-3 run function evercraft:village/upgrades/spawn_guard

# If 1 guard: spawn 1
execute if score #vs_guard_count vs.temp matches 1 positioned ~4 ~ ~-4 run function evercraft:village/upgrades/spawn_guard
