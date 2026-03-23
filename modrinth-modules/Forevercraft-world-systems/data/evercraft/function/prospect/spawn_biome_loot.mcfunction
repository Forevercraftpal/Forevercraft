# Prospect: Spawn biome-specific loot on ground (inventory full fallback)
# Macro function — called with storage evercraft:temp {node_biome:"..."}
$loot spawn ~ ~ ~ loot evercraft:prospect/drops/$(node_biome)
