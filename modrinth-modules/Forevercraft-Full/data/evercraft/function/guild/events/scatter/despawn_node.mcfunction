# Guild Event — Node Scatter: Despawn a single expired node
# @s = marker with ec.guild_node, at @s context

# Poof particle
particle poof ~ ~0.3 ~ 0.2 0.2 0.2 0.02 5

# Kill paired interaction entity
kill @e[type=interaction,tag=ec.guild_node_click,distance=..2,limit=1,sort=nearest]

# Kill self
kill @s
