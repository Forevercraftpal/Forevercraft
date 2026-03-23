# Pick a random color from the pool for a new party
# Run as the party creator

# Count available colors
execute store result score #pool_sz ec.temp run data get storage evercraft:party color_pool

# Fail if pool empty (7 parties already active)
execute if score #pool_sz ec.temp matches 0 run return run tellraw @s [{text:"[Party] ",color:"gold"},{text:"No party colors available! Too many active parties.",color:"red"}]

# Random index: 0..(size-1)
scoreboard players remove #pool_sz ec.temp 1
execute store result storage evercraft:party temp.idx int 1 run scoreboard players get #pool_sz ec.temp
function evercraft:party/color/pick_random with storage evercraft:party temp
