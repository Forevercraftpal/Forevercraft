# Tamable Fox — Toggle Sit/Stand
# Runs as the tamed fox. Toggles between sitting and following.

# Cancel breeding from the berry feed
data modify entity @s InLove set value 0

# Snapshot current state before toggling
scoreboard players operation #fox_was_sitting fox.owner = @s fox.sitting

execute if score #fox_was_sitting fox.owner matches 0 run function evercraft:foxes/sit
execute if score #fox_was_sitting fox.owner matches 1 run function evercraft:foxes/stand
