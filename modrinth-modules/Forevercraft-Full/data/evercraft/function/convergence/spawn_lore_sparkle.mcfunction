# Harmonic Convergence: Spawn a convergence-only lore sparkle
# Run as random player, at player position

# Cap: max 2 convergence sparkles within 60 blocks
execute store result score #conv_spark_count ec.temp if entity @e[type=marker,tag=ec.conv_sparkle,distance=..60]
execute if score #conv_spark_count ec.temp matches 2.. run return 0

# Summon temp marker for spread
summon marker ~ ~ ~ {Tags:["ec.conv_temp","ec.spawn_temp"]}

# Spread to random ground position within 30 blocks (closer than normal sparkles)
execute store success score #conv_spread ec.temp run spreadplayers ~ ~ 2 30 false @e[type=marker,tag=ec.conv_temp,limit=1]

# If spread failed, clean up
execute if score #conv_spread ec.temp matches 0 run kill @e[type=marker,tag=ec.conv_temp]
execute if score #conv_spread ec.temp matches 0 run return 0

# Place convergence sparkle at the spread position
execute at @e[type=marker,tag=ec.conv_temp,limit=1] run function evercraft:convergence/place_sparkle

# Clean up temp marker
kill @e[type=marker,tag=ec.conv_temp]
