# Trial Anvil GUI — Click Daily Challenge button
# Automatically selects the daily challenge type + tier and goes to that category view
# Run as: interaction entity

data remove entity @s interaction
execute as @p[tag=TT.InMenu,sort=nearest,distance=..5] at @s run function evercraft:craftforever/trial_anvil/gui/start_daily
