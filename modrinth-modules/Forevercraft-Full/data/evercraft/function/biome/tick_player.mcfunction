# Biome Detection — Per-player tick (called as @a at @s)
# Detects biome change, plays transition chime, tracks milestones

# Save previous biome (ec.biome_prev = previous biome ID, separate from ec.biome_last cache timestamp)
scoreboard players operation @s ec.biome_prev = @s ec.biome_id

# Detect current biome (updates ec.biome_id, uses ec.biome_last as gametime cache)
function evercraft:biome/detect

# Play chime on biome change (only if previous was set, not first-time)
execute unless score @s ec.biome_prev matches -1 unless score @s ec.biome_id = @s ec.biome_prev run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.4 1.2

# Track biome visit for world milestones
execute unless score @s ec.biome_id matches -1 unless score @s ec.biome_id = @s ec.biome_prev run function evercraft:milestones/increment/biome_visit
