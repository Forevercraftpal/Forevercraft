# Underground Biome Encounters — Per-Player Tick
# Run as/at each survival player

# If encounter active: run effects, decrement, check end
execute if score @s ube.timer matches 1.. run function evercraft:encounters/active_tick
execute if score @s ube.timer matches 1.. run return 0

# Otherwise: check for new trigger
function evercraft:encounters/trigger
