# Timber (5% Any Axe) — Raycast to find a log block
# Max 16 blocks (32 steps at 0.5)

execute if score #timber_ray ec.var matches 32.. run return 0

# Found a log — start timber here
execute if predicate evercraft:mythical_tools/is_log run function evercraft:world/timber/start
execute if predicate evercraft:mythical_tools/is_log run return 0

# Hit a solid non-log block — stop
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air unless block ~ ~ ~ void_air unless block ~ ~ ~ water unless block ~ ~ ~ lava run return 0

# Step forward
scoreboard players add #timber_ray ec.var 1
execute positioned ^ ^ ^0.5 run function evercraft:world/timber/raycast_find
