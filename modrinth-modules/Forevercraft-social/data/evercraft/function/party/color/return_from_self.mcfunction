# Return @s's party color to the pool
# Run as a party member who still has ec.pty_clr set

execute if score @s ec.pty_clr matches 0 run return 0

execute store result storage evercraft:party temp.clr int 1 run scoreboard players get @s ec.pty_clr
function evercraft:party/color/return with storage evercraft:party temp
