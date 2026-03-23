# Trial Anvil GUI — Toggle Hard Mode
# Run as: interaction entity, at: interaction entity

data remove entity @s interaction
execute as @p[tag=TT.InMenu,sort=nearest,distance=..5] at @s run function evercraft:craftforever/trial_anvil/gui/toggle_hard_mode
