# Underground Biome Encounters — Active Encounter Tick
# Run as/at player with ube.timer >= 1

# Route effects by encounter type
execute if score @s ube.type matches 1 run function evercraft:encounters/lush_caves
execute if score @s ube.type matches 2 run function evercraft:encounters/dripstone
execute if score @s ube.type matches 3 run function evercraft:encounters/deep_dark

# Decrement timer
scoreboard players remove @s ube.timer 1

# Check if encounter just ended
execute if score @s ube.timer matches 0 run function evercraft:encounters/stop
