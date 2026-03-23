# Message in a Bottle — Pull random message from pool and display

# Get pool size
execute store result score #bottle_size ec.temp run data get storage evercraft:bottles pool

# Roll random index (0-based, so max = size - 1)
scoreboard players remove #bottle_size ec.temp 1
execute store result storage evercraft:bottles ctx.max int 1 run scoreboard players get #bottle_size ec.temp
function evercraft:bottles/catch_roll with storage evercraft:bottles ctx
