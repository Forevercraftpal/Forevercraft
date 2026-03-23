# Open the Gacha Info Browser
# Runs as interaction entity (ec.FountainClickInfo), finds nearby player

# Clear interaction data
data remove entity @s interaction

# Get the player
execute as @p[tag=ec.InFountain,distance=..20] run function evercraft:gacha/fountain/info/init
