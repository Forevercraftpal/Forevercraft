# Foraging Bush: Render bush particles (10-tick schedule)
schedule function evercraft:forage/tick_particles 10t

# Gate: skip if no players online
execute unless entity @a run return 0

# Only render for bushes near players (performance optimization)
execute as @e[type=marker,tag=ec.forage_data] at @s if entity @a[distance=..48] run function evercraft:forage/render_bush
