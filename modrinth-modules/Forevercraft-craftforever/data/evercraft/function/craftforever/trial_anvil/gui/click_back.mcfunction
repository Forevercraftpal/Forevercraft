# Trial Anvil — Click Back button (return to category list)
data remove entity @s interaction
execute as @p[tag=TT.InMenu,distance=..7] run function evercraft:craftforever/trial_anvil/gui/close
execute as @p[distance=..7] at @s run function evercraft:craftforever/trial_anvil/gui/open
