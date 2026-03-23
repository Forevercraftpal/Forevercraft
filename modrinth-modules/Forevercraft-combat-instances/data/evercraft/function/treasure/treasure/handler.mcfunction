kill @s

# Gets data from block location
data modify storage evercraft:treasure/treasure data set from entity @s Item.components."minecraft:custom_data"
data modify storage evercraft:treasure/treasure data.player set from entity @s Item.components."minecraft:profile".name
data modify storage evercraft:treasure/treasure data.despawn set from storage evercraft:treasure/settings despawn_speed

# Gets player's rotation
function evercraft:treasure/treasure/player/get_rotation with storage evercraft:treasure/treasure data

# Spawns Treasure at location aligned to block
execute align xyz positioned ~0.5 ~ ~0.5 run function evercraft:treasure/treasure/spawn with storage evercraft:treasure/treasure data