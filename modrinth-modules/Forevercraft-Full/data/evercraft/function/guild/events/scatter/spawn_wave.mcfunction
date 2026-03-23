# Guild Event — Node Scatter: Spawn wave
# Self-scheduling every 10s (200t). Spawns 3 nodes around each guilded player.

# Stop scheduling if event ended
execute unless score #ge_scatter_active ec.var matches 1 run return 0

# Spawn 3 nodes per guilded player
execute as @a[scores={ec.guild_id=1..}] at @s run function evercraft:guild/events/scatter/spawn_player_nodes

# Sound ping for all guilded players (subtle chime per wave)
execute as @a[scores={ec.guild_id=1..}] at @s run playsound minecraft:block.amethyst_cluster.hit player @s ~ ~ ~ 0.3 1.5

# Schedule next wave in 10 seconds
schedule function evercraft:guild/events/scatter/spawn_wave 200t
