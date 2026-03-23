# Rejoin party team after reload — reads ec.pty_clr and joins the right team
# Run as a party member with ec.pty_clr=1..7

execute store result storage evercraft:party temp.clr int 1 run scoreboard players get @s ec.pty_clr
function evercraft:party/color/join_team with storage evercraft:party temp
