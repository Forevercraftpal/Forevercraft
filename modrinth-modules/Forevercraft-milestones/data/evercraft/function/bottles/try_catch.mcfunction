# Message in a Bottle — 2% chance to catch on fishing success
# Called from fishing/ref/on_catch.mcfunction

# Skip if pool is empty
execute unless data storage evercraft:bottles pool[0] run return 0

# 2% chance
execute store result score #bottle_roll ec.temp run random value 1..100
execute unless score #bottle_roll ec.temp matches 1..2 run return 0

# Catch!
function evercraft:bottles/catch
