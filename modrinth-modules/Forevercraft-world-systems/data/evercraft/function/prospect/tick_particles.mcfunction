# Ore Node: Render node particles (10-tick schedule)
schedule function evercraft:prospect/tick_particles 10t

# Only render for nodes near players (performance optimization)
execute as @e[type=marker,tag=ec.prospect_data] at @s if entity @a[distance=..48] run function evercraft:prospect/render_node
