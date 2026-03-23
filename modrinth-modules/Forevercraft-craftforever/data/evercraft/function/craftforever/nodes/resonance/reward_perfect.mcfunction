# Resonance Strike — PERFECT HIT
# Run as player, at player position

tellraw @s [{text:"",color:"gold"},{text:"\u2726 ",color:"gold"},{text:"Perfect Resonance! ",color:"gold",bold:true},{text:"Rare bonus loot!",color:"yellow"}]
title @s actionbar [{text:"\u2726 PERFECT STRIKE! \u2726",color:"gold",bold:true}]

# Award bonus rare loot
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full
execute if score #inv_full ec.var matches 0 run loot give @s loot evercraft:craftforever/nodes/resonance_perfect
execute if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:craftforever/nodes/resonance_perfect

# Also give duplicate of the biome material they just mined
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

# Double Artisan XP (award same XP again)
scoreboard players set #cf_xp_gain ec.temp 10
execute if score @s ec.cf_node_mined matches 4 run scoreboard players set #cf_xp_gain ec.temp 5
execute if score @s ec.cf_node_mined matches 14 run scoreboard players set #cf_xp_gain ec.temp 5
execute if score @s ec.cf_node_mined matches 6 run scoreboard players set #cf_xp_gain ec.temp 15
execute if score @s ec.cf_node_mined matches 7 run scoreboard players set #cf_xp_gain ec.temp 15
execute if score @s ec.cf_node_mined matches 9 run scoreboard players set #cf_xp_gain ec.temp 15
execute if score @s ec.cf_node_mined matches 3 run scoreboard players set #cf_xp_gain ec.temp 20
execute if score @s ec.cf_node_mined matches 11 run scoreboard players set #cf_xp_gain ec.temp 20
execute if score @s ec.cf_node_mined matches 8 run scoreboard players set #cf_xp_gain ec.temp 25
scoreboard players operation @s ec.cf_xp += #cf_xp_gain ec.temp

# Effects
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.2
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 1.0 0.6
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.1 30
experience add @s 15 points
