# Trial Anvil — Click Start Trial button
data remove entity @s interaction

# Start the trial for the nearest TT.InMenu player
execute as @p[tag=TT.InMenu,distance=..7] at @s run function evercraft:craftforever/trials/start
