# Duel — Teleport to Spawn Point (runs as the loser)
# Reads respawn.pos and respawn.dimension to teleport player to their bed

# Store spawn coordinates to storage
execute store result storage evercraft:duel_temp x int 1 run data get entity @s respawn.pos[0]
execute store result storage evercraft:duel_temp y int 1 run data get entity @s respawn.pos[1]
execute store result storage evercraft:duel_temp z int 1 run data get entity @s respawn.pos[2]

# Store dimension for cross-dimension support
data modify storage evercraft:duel_temp dim set from entity @s respawn.dimension

# Teleport via macro
function evercraft:duel/active/tp_to_spawn_macro with storage evercraft:duel_temp
