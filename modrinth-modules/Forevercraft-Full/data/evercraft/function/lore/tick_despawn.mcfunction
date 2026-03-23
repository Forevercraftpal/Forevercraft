# Lore Discovery: Check sparkle lifetimes (every 5 seconds)
schedule function evercraft:lore/tick_despawn 100t

# OPT: Existence gate — skip entity scan when no sparkles exist
execute unless entity @e[type=marker,tag=ec.lore_data,limit=1] run return 0

execute as @e[type=marker,tag=ec.lore_data] run function evercraft:lore/check_despawn
