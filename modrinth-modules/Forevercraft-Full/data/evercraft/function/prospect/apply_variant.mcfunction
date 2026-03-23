# Prospect: Store biome on marker entity
# Macro function — called with storage evercraft:temp {node_biome:"..."}
$data modify entity @e[type=marker,tag=ec.prospect_new,limit=1,distance=..1] data.biome set value "$(node_biome)"
