# Bounty — Calculate direction to target biome and show flavor hint
# Macro: biome_id (minecraft biome identifier)
# Run as player who accepted bounty

# Get base distance from player to nearest target biome
$execute at @s store result score #bnt_dist_c ec.var run locate biome $(biome_id)

# Get distance from 200 blocks east (+X) and south (+Z) for triangulation
$execute at @s positioned ~200 ~ ~ store result score #bnt_dist_e ec.var run locate biome $(biome_id)
$execute at @s positioned ~ ~ ~200 store result score #bnt_dist_s ec.var run locate biome $(biome_id)

# East-West: if moving east reduces distance, biome is east
scoreboard players operation #bnt_diff_e ec.var = #bnt_dist_c ec.var
scoreboard players operation #bnt_diff_e ec.var -= #bnt_dist_e ec.var
scoreboard players set #bnt_dir_ew ec.var 0
execute if score #bnt_diff_e ec.var matches 15.. run scoreboard players set #bnt_dir_ew ec.var 1
execute if score #bnt_diff_e ec.var matches ..-15 run scoreboard players set #bnt_dir_ew ec.var -1

# North-South: if moving south reduces distance, biome is south
scoreboard players operation #bnt_diff_s ec.var = #bnt_dist_c ec.var
scoreboard players operation #bnt_diff_s ec.var -= #bnt_dist_s ec.var
scoreboard players set #bnt_dir_ns ec.var 0
execute if score #bnt_diff_s ec.var matches 15.. run scoreboard players set #bnt_dir_ns ec.var 1
execute if score #bnt_diff_s ec.var matches ..-15 run scoreboard players set #bnt_dir_ns ec.var -1

# Map to direction string
data modify storage evercraft:bounty direction set value "nearby"

# Cardinal directions
execute if score #bnt_dir_ns ec.var matches -1 if score #bnt_dir_ew ec.var matches 0 run data modify storage evercraft:bounty direction set value "the north"
execute if score #bnt_dir_ns ec.var matches 1 if score #bnt_dir_ew ec.var matches 0 run data modify storage evercraft:bounty direction set value "the south"
execute if score #bnt_dir_ew ec.var matches 1 if score #bnt_dir_ns ec.var matches 0 run data modify storage evercraft:bounty direction set value "the east"
execute if score #bnt_dir_ew ec.var matches -1 if score #bnt_dir_ns ec.var matches 0 run data modify storage evercraft:bounty direction set value "the west"

# Intercardinal directions
execute if score #bnt_dir_ns ec.var matches -1 if score #bnt_dir_ew ec.var matches 1 run data modify storage evercraft:bounty direction set value "the north-east"
execute if score #bnt_dir_ns ec.var matches -1 if score #bnt_dir_ew ec.var matches -1 run data modify storage evercraft:bounty direction set value "the north-west"
execute if score #bnt_dir_ns ec.var matches 1 if score #bnt_dir_ew ec.var matches 1 run data modify storage evercraft:bounty direction set value "the south-east"
execute if score #bnt_dir_ns ec.var matches 1 if score #bnt_dir_ew ec.var matches -1 run data modify storage evercraft:bounty direction set value "the south-west"

# Biome-specific flavor text
execute if score @s ec.bnt_biome matches 0 run data modify storage evercraft:bounty flavor set value "the meadows calling"
execute if score @s ec.bnt_biome matches 1 run data modify storage evercraft:bounty flavor set value "the ancient canopies rustling"
execute if score @s ec.bnt_biome matches 2 run data modify storage evercraft:bounty flavor set value "wild blossoms stirring on the wind"
execute if score @s ec.bnt_biome matches 3 run data modify storage evercraft:bounty flavor set value "the darkwood whispering"
execute if score @s ec.bnt_biome matches 4 run data modify storage evercraft:bounty flavor set value "the frozen pines howling"
execute if score @s ec.bnt_biome matches 5 run data modify storage evercraft:bounty flavor set value "echoes rolling from the peaks"
execute if score @s ec.bnt_biome matches 6 run data modify storage evercraft:bounty flavor set value "drums beating through the undergrowth"
execute if score @s ec.bnt_biome matches 7 run data modify storage evercraft:bounty flavor set value "the dunes howling"
execute if score @s ec.bnt_biome matches 8 run data modify storage evercraft:bounty flavor set value "the dry winds crying"
execute if score @s ec.bnt_biome matches 9 run data modify storage evercraft:bounty flavor set value "the tides calling"
execute if score @s ec.bnt_biome matches 10 run data modify storage evercraft:bounty flavor set value "flowing waters murmuring"
execute if score @s ec.bnt_biome matches 11 run data modify storage evercraft:bounty flavor set value "whispers rising from the mire"
execute if score @s ec.bnt_biome matches 12 run data modify storage evercraft:bounty flavor set value "a strange hum from the mycelium"
execute if score @s ec.bnt_biome matches 13 run data modify storage evercraft:bounty flavor set value "the frozen spires cracking"
execute if score @s ec.bnt_biome matches 14 run data modify storage evercraft:bounty flavor set value "the canyon winds stirring"

# Display the hint
function evercraft:bounty/show_hint with storage evercraft:bounty
