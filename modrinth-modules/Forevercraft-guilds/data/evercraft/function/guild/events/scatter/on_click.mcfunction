# Guild Event — Node Scatter: Handle node click
# @s = interaction entity that was clicked, at @s context

# Get the clicking player
execute on attacker run tag @s add ec.ge_collector

# Find paired marker at same position
execute as @e[type=marker,tag=ec.guild_node,distance=..2,limit=1,sort=nearest] run function evercraft:guild/events/scatter/dispatch_reward

# Kill both entities (marker + interaction)
kill @e[type=marker,tag=ec.guild_node,distance=..2,limit=1,sort=nearest]
kill @s

# Clear interaction data just in case
tag @a remove ec.ge_collector
