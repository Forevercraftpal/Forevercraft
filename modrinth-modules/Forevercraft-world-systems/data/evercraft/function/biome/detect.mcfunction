# Biome Detection (Cached) - Sets ec.biome_id for the executing player
# Uses gametime-based cache: skips re-evaluation if checked within last 5 seconds (100 ticks)
# For guaranteed-fresh results (crate opens), call evercraft:biome/detect_full directly

# Calculate elapsed ticks since last biome check
execute store result score #now ec.temp run time query gametime
scoreboard players operation #now ec.temp -= @s ec.biome_last

# If within 100 ticks (5 seconds) AND we have a valid biome, use cached result
execute if score #now ec.temp matches ..99 if score @s ec.biome_id matches 0.. run return 0

# Cache miss — run full 25-predicate detection
function evercraft:biome/detect_full

# Update cache timestamp
execute store result score @s ec.biome_last run time query gametime
