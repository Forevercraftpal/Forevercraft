# Biome Node: Check node lifetimes (every 5 seconds)
schedule function evercraft:craftforever/nodes/tick_despawn 100t

execute as @e[type=marker,tag=ec.cf_node_data] run function evercraft:craftforever/nodes/check_despawn
