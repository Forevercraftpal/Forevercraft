# ============================================================
# Check Biome Discoveries
# Detect current biome, tag if not yet discovered
# Run as player at player position
# ============================================================

# Detect current biome (sets ec.biome_id 0-24)
function evercraft:biome/detect

# Skip if unknown biome
execute unless score @s ec.biome_id matches 0..24 run return fail

# OPT: Skip if all 25 biomes already discovered
execute if score @s jn.biome_count matches 25.. run return 0

# OPT: Macro dispatch — 25 biome checks → 1 storage write + 1 macro call
# Store biome_id to storage for macro arg, then check the specific tag
execute store result storage evercraft:jn_temp id int 1 run scoreboard players get @s ec.biome_id
function evercraft:journal/check/biome_macro with storage evercraft:jn_temp
