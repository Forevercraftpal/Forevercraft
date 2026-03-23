# Forage: Apply biome variant visual + store biome on marker
# Macro function — called with storage evercraft:temp {node_biome:"...", node_variant:N}
$data modify entity @e[type=marker,tag=ec.forage_new,limit=1,distance=..1] data.biome set value "$(node_biome)"
$data modify entity @e[type=item_display,tag=ec.forage_vis_new,limit=1,distance=..1] item set from storage evercraft:node_variants forage.$(node_biome).v$(node_variant)
