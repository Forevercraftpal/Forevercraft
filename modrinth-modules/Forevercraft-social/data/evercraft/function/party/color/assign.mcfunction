# Extract the color at the random index from the pool (macro)
# Arg: idx (index into color_pool array)

$data modify storage evercraft:party temp.clr set from storage evercraft:party color_pool[$(idx)]
$data remove storage evercraft:party color_pool[$(idx)]

# Store color on player
execute store result score @s ec.pty_clr run data get storage evercraft:party temp.clr

# Join the team
function evercraft:party/color/join_team with storage evercraft:party temp
