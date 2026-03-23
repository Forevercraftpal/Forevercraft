# Guild Event — Node Scatter: End
# Kill all remaining nodes, deactivate

scoreboard players set #ge_scatter_active ec.var 0

# Kill all remaining node entities (markers + interactions)
kill @e[type=marker,tag=ec.guild_node]
kill @e[type=interaction,tag=ec.guild_node_click]

# Announce
tellraw @a[scores={ec.guild_id=1..}] [{text:"[Guild] ",color:"green"},{text:"The scattered nodes have faded away.",color:"gray"}]
