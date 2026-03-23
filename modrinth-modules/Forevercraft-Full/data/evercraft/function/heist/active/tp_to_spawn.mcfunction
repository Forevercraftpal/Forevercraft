# Black Market Heist — Teleport to Spawn Point (runs as the player)
# Reads respawn.pos and respawn.dimension to teleport player to their bed

# Store spawn coordinates to storage
execute store result storage evercraft:heist_temp x int 1 run data get entity @s respawn.pos[0]
execute store result storage evercraft:heist_temp y int 1 run data get entity @s respawn.pos[1]
execute store result storage evercraft:heist_temp z int 1 run data get entity @s respawn.pos[2]

# Store dimension for cross-dimension support
data modify storage evercraft:heist_temp dim set from entity @s respawn.dimension

# Teleport via macro
function evercraft:heist/active/tp_to_spawn_macro with storage evercraft:heist_temp
