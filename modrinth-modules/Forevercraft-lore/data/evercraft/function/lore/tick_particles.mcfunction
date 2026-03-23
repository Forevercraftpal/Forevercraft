# Lore Discovery: Render sparkle particles (10-tick schedule)
schedule function evercraft:lore/tick_particles 10t

# Gate: skip if no players online
execute unless entity @a run return 0

# Only render for sparkles near players (performance optimization)
execute as @e[type=marker,tag=ec.lore_data] at @s if entity @a[distance=..48] run function evercraft:lore/render_sparkle
