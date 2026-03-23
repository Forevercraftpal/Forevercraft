# Guild Event — Node Scatter: Spawn 3 nodes around a player
# @s = guilded player, at @s context

# Spawn 3 temp markers at player pos
execute summon marker run function evercraft:guild/events/scatter/spawn_single_node
execute summon marker run function evercraft:guild/events/scatter/spawn_single_node
execute summon marker run function evercraft:guild/events/scatter/spawn_single_node

# Spread them around the player (min 3 apart, max 32 from player)
spreadplayers ~ ~ 3 32 false @e[type=marker,tag=ec.guild_node_new]

# Finalize each: spawn interaction entity, remove temp tag
execute as @e[type=marker,tag=ec.guild_node_new] at @s run function evercraft:guild/events/scatter/finalize_node
