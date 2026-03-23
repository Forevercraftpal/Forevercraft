# Biome Node: Render node particles (10-tick schedule)
schedule function evercraft:craftforever/nodes/tick_particles 10t

# Only render for nodes near players (performance optimization)
execute as @e[type=marker,tag=ec.cf_node_data] at @s if entity @a[distance=..48] run function evercraft:craftforever/nodes/render_node
