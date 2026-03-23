# Pick a random index into the color pool (macro)
# Arg: idx (max index, i.e. pool size - 1)

$execute store result score #clr_idx ec.temp run random value 0..$(idx)
execute store result storage evercraft:party temp.idx int 1 run scoreboard players get #clr_idx ec.temp
function evercraft:party/color/assign with storage evercraft:party temp
