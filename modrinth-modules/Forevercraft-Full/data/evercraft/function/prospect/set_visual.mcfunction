# Prospect: Set biome-specific block_state on block_display
# Macro function — called with storage evercraft:temp {node_biome:"...", node_variant:N}
$data modify entity @e[type=block_display,tag=ec.prospect_vis_new,limit=1,distance=..1] block_state set from storage evercraft:node_variants prospect.$(node_biome).v$(node_variant)
