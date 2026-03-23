# Trial Anvil — Click Mining category
data remove entity @s interaction

# Set trial type to Mining (1)
scoreboard players set @p[tag=TT.InMenu,distance=..7] ec.tt_type 1

# Show mining tier selection
execute as @p[tag=TT.InMenu,distance=..7] at @s run function evercraft:craftforever/trial_anvil/gui/show_mining
