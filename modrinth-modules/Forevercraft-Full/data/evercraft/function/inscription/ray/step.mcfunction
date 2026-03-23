# Inscription — Raycast Step
# Steps 0.5 blocks forward from player eyes, max 10 steps (5 blocks)
# Checks for polished_deepslate at each step

# Max range reached — no valid block found
execute if score #inscr_ray ec.temp matches 10.. run return run function evercraft:inscription/ray/not_found

# Found polished_deepslate — inscribe it
execute if block ~ ~ ~ polished_deepslate run return run function evercraft:inscription/ray/found

# Hit a solid non-passthrough block that isn't polished_deepslate — stop
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air unless block ~ ~ ~ void_air unless block ~ ~ ~ water unless block ~ ~ ~ lava unless block ~ ~ ~ #minecraft:replaceable run return run function evercraft:inscription/ray/not_found

# Step forward 0.5 blocks and recurse
scoreboard players add #inscr_ray ec.temp 1
execute positioned ^ ^ ^0.5 run function evercraft:inscription/ray/step
