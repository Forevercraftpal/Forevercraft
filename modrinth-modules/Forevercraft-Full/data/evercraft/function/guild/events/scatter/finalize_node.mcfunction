# Guild Event — Node Scatter: Finalize a node after spreadplayers
# @s = node marker at spread position, at @s context
# Spawns the interaction entity for click detection

# Remove temp tag
tag @s remove ec.guild_node_new

# Spawn interaction entity at same position (slightly above ground)
summon interaction ~ ~0.1 ~ {Tags:["ec.guild_node_click","ec.guild_node"],width:1.5f,height:1.5f,response:1b}
