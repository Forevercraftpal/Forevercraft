# Dream Echo — Click Handler
# Run as the interaction entity, at its position
# Reads artifact data from paired marker and displays to clicker

# Clear interaction response
data remove entity @s interaction

# If clicker is holding shears, remove the echo instead
execute if items entity @p[distance=..5] weapon.mainhand minecraft:shears run function evercraft:dream_echoes/remove
execute if items entity @p[distance=..5] weapon.mainhand minecraft:shears run return 0

# Copy artifact info from paired marker to temp storage
data modify storage evercraft:echo temp.artifact set from entity @e[type=marker,tag=ec.dream_echo,distance=..2,limit=1] data.artifact

# Display to nearest player (the clicker)
execute as @p[distance=..5] run function evercraft:dream_echoes/display with storage evercraft:echo temp

# Ambient effects
particle soul_fire_flame ~ ~0.5 ~ 0.3 0.5 0.3 0.02 15 force
playsound minecraft:block.amethyst_block.resonate master @p[distance=..5] ~ ~ ~ 0.5 1.2
playsound minecraft:block.beacon.ambient master @p[distance=..5] ~ ~ ~ 0.3 2.0
