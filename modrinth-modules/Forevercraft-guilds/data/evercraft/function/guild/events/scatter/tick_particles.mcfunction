# Guild Event — Node Scatter: Ambient particles on active nodes
# Self-scheduling 10t loop while scatter is active

# Skip if event not active
execute unless score #ge_scatter_active ec.var matches 1 run return 0

# Particles on all node markers
# Colored dust particles (matching lore-style effects, not puffy end_rod)
execute as @e[type=marker,tag=ec.guild_node] at @s run particle dust{color:[0.5,0.0,0.8],scale:1.0} ~ ~0.5 ~ 0.3 0.5 0.3 0.02 3
execute as @e[type=marker,tag=ec.guild_node] at @s run particle dust{color:[0.8,0.6,1.0],scale:0.7} ~ ~0.8 ~ 0.2 0.3 0.2 0.01 2

# Reschedule
schedule function evercraft:guild/events/scatter/tick_particles 10t
