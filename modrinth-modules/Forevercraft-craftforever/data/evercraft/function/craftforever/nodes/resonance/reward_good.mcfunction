# Resonance Strike — GOOD HIT (edge of zone)
# Run as player, at player position

tellraw @s [{text:"",color:"yellow"},{text:"\u2726 ",color:"yellow"},{text:"Good Strike! ",color:"yellow",bold:true},{text:"Bonus material!",color:"white"}]
title @s actionbar [{text:"\u2726 Good Strike! \u2726",color:"yellow"}]

# Award duplicate of the biome material they just mined
execute if score @s ec.cf_node_mined matches 1 run loot give @s loot evercraft:craftforever/nodes/frostcrystal
execute if score @s ec.cf_node_mined matches 2 run loot give @s loot evercraft:craftforever/nodes/sunite
execute if score @s ec.cf_node_mined matches 3 run loot give @s loot evercraft:craftforever/nodes/voidite
execute if score @s ec.cf_node_mined matches 4 run loot give @s loot evercraft:craftforever/nodes/livingstone
execute if score @s ec.cf_node_mined matches 5 run loot give @s loot evercraft:craftforever/nodes/tideforged
execute if score @s ec.cf_node_mined matches 6 run loot give @s loot evercraft:craftforever/nodes/blazite
execute if score @s ec.cf_node_mined matches 7 run loot give @s loot evercraft:craftforever/nodes/warpstone
execute if score @s ec.cf_node_mined matches 8 run loot give @s loot evercraft:craftforever/nodes/endric
execute if score @s ec.cf_node_mined matches 9 run loot give @s loot evercraft:craftforever/nodes/sporite
execute if score @s ec.cf_node_mined matches 10 run loot give @s loot evercraft:craftforever/nodes/verdant
execute if score @s ec.cf_node_mined matches 11 run loot give @s loot evercraft:craftforever/nodes/skymetal
execute if score @s ec.cf_node_mined matches 12 run loot give @s loot evercraft:craftforever/nodes/sunforged
execute if score @s ec.cf_node_mined matches 13 run loot give @s loot evercraft:craftforever/nodes/shadowroot
execute if score @s ec.cf_node_mined matches 14 run loot give @s loot evercraft:craftforever/nodes/bogstone
execute if score @s ec.cf_node_mined matches 15 run loot give @s loot evercraft:craftforever/nodes/blossom

# +50% Artisan XP (half of the base gain)
scoreboard players set #cf_xp_gain ec.temp 5
execute if score @s ec.cf_node_mined matches 4 run scoreboard players set #cf_xp_gain ec.temp 3
execute if score @s ec.cf_node_mined matches 14 run scoreboard players set #cf_xp_gain ec.temp 3
execute if score @s ec.cf_node_mined matches 6 run scoreboard players set #cf_xp_gain ec.temp 8
execute if score @s ec.cf_node_mined matches 7 run scoreboard players set #cf_xp_gain ec.temp 8
execute if score @s ec.cf_node_mined matches 9 run scoreboard players set #cf_xp_gain ec.temp 8
execute if score @s ec.cf_node_mined matches 3 run scoreboard players set #cf_xp_gain ec.temp 10
execute if score @s ec.cf_node_mined matches 11 run scoreboard players set #cf_xp_gain ec.temp 10
execute if score @s ec.cf_node_mined matches 8 run scoreboard players set #cf_xp_gain ec.temp 13
scoreboard players operation @s ec.cf_xp += #cf_xp_gain ec.temp

# Effects
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.8 1.0
particle minecraft:electric_spark ~ ~1 ~ 0.3 0.3 0.3 0.02 15
experience add @s 10 points
