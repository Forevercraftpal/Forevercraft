# Lore Roll: Pick overworld biome set (macro)
# Pool: evercraft:lore pools.ow_biome_{biome_id}

# Copy pool to temp array
$data modify storage evercraft:lore temp.pool set from storage evercraft:lore pools.ow_biome_$(biome_id)

# Count entries
execute store result score #lore_pool_size ec.temp run data get storage evercraft:lore temp.pool

# If pool empty or missing, leave set_id at 0 (fallback will handle)
execute if score #lore_pool_size ec.temp matches ..0 run return 0

# Random index into pool
execute store result score #lore_pick ec.temp run random value 0..0
execute if score #lore_pool_size ec.temp matches 2 store result score #lore_pick ec.temp run random value 0..1
execute if score #lore_pool_size ec.temp matches 3.. store result score #lore_pick ec.temp run random value 0..2

# Copy chosen entry to result
execute store result storage evercraft:lore temp.pick_idx int 1 run scoreboard players get #lore_pick ec.temp
function evercraft:lore/roll/read_pool_entry with storage evercraft:lore temp
