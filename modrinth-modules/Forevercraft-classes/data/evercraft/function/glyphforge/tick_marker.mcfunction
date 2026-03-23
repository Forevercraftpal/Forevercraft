# Glyphforge Marker Tick — runs as marker, at marker
# OPT: Consolidates 6 @e scans into 1 per-marker function call

# Break detection: if lodestone block is gone, clean up
execute unless block ~ ~ ~ minecraft:lodestone run return run function evercraft:glyphforge/on_break

# OPT: Read state into score once (was 6 NBT reads for state checks)
execute store result score #rf_st ec.temp run data get entity @s data.rf_state

# Check if forging (state 2) has completed
execute if score #rf_st ec.temp matches 2 run function evercraft:glyphforge/check_forge_complete

# Particles (only near players — OPT: skip if nobody within 48 blocks)
execute unless entity @a[distance=..48] run return 0

# State 0/1: idle flame
execute if score #rf_st ec.temp matches ..1 run particle minecraft:flame ~ ~1.2 ~ 0.2 0.15 0.2 0.01 2

# State 2: forging — lava + smoke (more intense)
execute if score #rf_st ec.temp matches 2 run particle minecraft:lava ~ ~1.2 ~ 0.2 0.15 0.2 0.01 3
execute if score #rf_st ec.temp matches 2 run particle minecraft:smoke ~ ~1.5 ~ 0.1 0.1 0.1 0.02 5
execute if score #rf_st ec.temp matches 2 run particle minecraft:flame ~ ~1.0 ~ 0.15 0.1 0.15 0.02 4

# State 3: ready — totem sparkles
execute if score #rf_st ec.temp matches 3 run particle minecraft:totem_of_undying ~ ~1.3 ~ 0.2 0.2 0.2 0.05 3
