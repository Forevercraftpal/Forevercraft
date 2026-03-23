# Infinite Castle — Teleport to Spawn Point (runs as fallen player)
# Reuses duel pattern: reads respawn.pos and respawn.dimension

# Store spawn coordinates to storage
execute store result storage evercraft:castle_temp x int 1 run data get entity @s respawn.pos[0]
execute store result storage evercraft:castle_temp y int 1 run data get entity @s respawn.pos[1]
execute store result storage evercraft:castle_temp z int 1 run data get entity @s respawn.pos[2]

# Store dimension
data modify storage evercraft:castle_temp dim set from entity @s respawn.dimension

# Teleport via macro
function evercraft:castle/tp_to_spawn_macro with storage evercraft:castle_temp
