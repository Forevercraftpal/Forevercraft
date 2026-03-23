# Forage: Give biome-specific loot to player
# Macro function — called with storage evercraft:temp {node_biome:"..."}
$loot give @s loot evercraft:forage/drops/$(node_biome)
