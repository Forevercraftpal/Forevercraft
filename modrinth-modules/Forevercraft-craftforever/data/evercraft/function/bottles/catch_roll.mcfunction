# Macro: Roll random index and extract message from pool
$execute store result score #bottle_idx ec.temp run random value 0..$(max)
execute store result storage evercraft:bottles ctx.idx int 1 run scoreboard players get #bottle_idx ec.temp
function evercraft:bottles/catch_extract with storage evercraft:bottles ctx
