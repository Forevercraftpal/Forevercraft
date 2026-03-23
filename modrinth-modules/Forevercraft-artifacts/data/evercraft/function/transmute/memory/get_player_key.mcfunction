# Transmute Memory — Extract player UUID to storage temp
# Run as: player

execute store result storage evercraft:transmute temp.p0 int 1 run data get entity @s UUID[0]
execute store result storage evercraft:transmute temp.p1 int 1 run data get entity @s UUID[1]
execute store result storage evercraft:transmute temp.p2 int 1 run data get entity @s UUID[2]
execute store result storage evercraft:transmute temp.p3 int 1 run data get entity @s UUID[3]

# Build string key via macro
function evercraft:transmute/memory/build_player_key with storage evercraft:transmute temp
