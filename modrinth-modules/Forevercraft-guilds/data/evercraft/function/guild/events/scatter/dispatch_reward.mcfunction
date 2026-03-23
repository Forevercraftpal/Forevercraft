# Guild Event — Node Scatter: Dispatch reward based on node type
# @s = marker with data.node_type, collector has tag ec.ge_collector

# Read node type and dispatch
execute if data entity @s data{node_type:"bottles_xp"} as @a[tag=ec.ge_collector,limit=1] run function evercraft:guild/events/scatter/reward/bottles_xp
execute if data entity @s data{node_type:"growth_potion"} as @a[tag=ec.ge_collector,limit=1] run function evercraft:guild/events/scatter/reward/growth_potion
execute if data entity @s data{node_type:"forever_coins"} as @a[tag=ec.ge_collector,limit=1] run function evercraft:guild/events/scatter/reward/forever_coins
execute if data entity @s data{node_type:"crate"} as @a[tag=ec.ge_collector,limit=1] run function evercraft:guild/events/scatter/reward/crate
execute if data entity @s data{node_type:"awakening_stone"} as @a[tag=ec.ge_collector,limit=1] run function evercraft:guild/events/scatter/reward/awakening_stone
execute if data entity @s data{node_type:"tree_token"} as @a[tag=ec.ge_collector,limit=1] run function evercraft:guild/events/scatter/reward/tree_token

# Particle burst at collection point
execute at @s run particle happy_villager ~ ~0.5 ~ 0.5 0.5 0.5 0 15
