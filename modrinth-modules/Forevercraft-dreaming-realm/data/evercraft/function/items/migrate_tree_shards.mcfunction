# One-time migration: Replace old Tree Shards (no consumable) with updated ones
# Run as: /execute as @a run function evercraft:items/migrate_tree_shards

# Count how many tree shards the player has
execute store result score #shard_count ec.temp run clear @s minecraft:prismarine_shard[custom_data~{tree_shard:1b}] 0

# If they have none, skip
execute if score #shard_count ec.temp matches 0 run return 0

# Clear all old tree shards
clear @s minecraft:prismarine_shard[custom_data~{tree_shard:1b}]

# Give back the same amount with consumable component
execute if score #shard_count ec.temp matches 1.. run function evercraft:items/migrate_tree_shards_give
