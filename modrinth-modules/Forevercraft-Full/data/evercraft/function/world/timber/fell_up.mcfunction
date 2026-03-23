# Timber (5% Any Axe) — Fell logs upward
# Recursively breaks logs in a column above the starting position (max 10)

# Stop if we've broken 10 logs
execute if score #timber_count ec.var matches 10.. run return 0

# Check if current block is a log
execute unless predicate evercraft:mythical_tools/is_log run return 0

# Break the log — drop its loot and replace with air
loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ air

# Increment counter
scoreboard players add #timber_count ec.var 1

# Particle per block
particle block{block_state:{Name:"minecraft:oak_log"}} ~ ~ ~ 0.3 0.3 0.3 0.1 8

# Continue upward
execute positioned ~ ~1 ~ run function evercraft:world/timber/fell_up
