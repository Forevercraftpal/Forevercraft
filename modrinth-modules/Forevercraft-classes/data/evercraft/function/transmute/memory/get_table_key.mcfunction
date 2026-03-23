# Transmute Memory — Extract table marker UUID to storage temp
# Run as: TX.Marker entity

execute store result storage evercraft:transmute temp.t0 int 1 run data get entity @s UUID[0]
execute store result storage evercraft:transmute temp.t1 int 1 run data get entity @s UUID[1]
execute store result storage evercraft:transmute temp.t2 int 1 run data get entity @s UUID[2]
execute store result storage evercraft:transmute temp.t3 int 1 run data get entity @s UUID[3]

# Build string key via macro
function evercraft:transmute/memory/build_table_key with storage evercraft:transmute temp
