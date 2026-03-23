# Guild Event — Node Scatter: Active event tick (called every 1s from events/tick)
# Decrements event timer + node life timers. Despawns expired nodes.

# Decrement event timer by 20 (1 second = 20 ticks)
scoreboard players remove #ge_scatter_timer ec.var 20

# Decrement all node life counters
scoreboard players remove @e[type=marker,tag=ec.guild_node] ec.ge_node_life 1

# Despawn expired nodes (life <= 0)
execute as @e[type=marker,tag=ec.guild_node,scores={ec.ge_node_life=..0}] at @s run function evercraft:guild/events/scatter/despawn_node

# Check if event time is up
execute if score #ge_scatter_timer ec.var matches ..0 run function evercraft:guild/events/scatter/end
