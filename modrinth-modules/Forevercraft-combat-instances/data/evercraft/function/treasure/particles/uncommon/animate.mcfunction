execute if score @s ec.plot matches 2 run particle minecraft:happy_villager ~ ~ ~ 0 0 0 0.05 15 force
execute if score @s ec.plot matches 0 run function evercraft:treasure/particles/uncommon/frames/f0
execute if score @s ec.plot matches 1 run function evercraft:treasure/particles/uncommon/frames/f1
execute if score @s ec.plot matches 2 run function evercraft:treasure/particles/uncommon/frames/f2
execute if score @s ec.plot matches 3 run function evercraft:treasure/particles/uncommon/frames/f3
execute if score @s ec.plot matches 4 run function evercraft:treasure/particles/uncommon/frames/f4
execute if score @s ec.plot matches 5 run function evercraft:treasure/particles/uncommon/frames/f5
execute if score @s ec.plot matches 6 run function evercraft:treasure/particles/uncommon/frames/f6
execute if score @s ec.plot matches 7 run function evercraft:treasure/particles/uncommon/frames/f7
execute if score @s ec.plot matches 8 run function evercraft:treasure/particles/uncommon/frames/f8
execute if score @s ec.plot matches 9 run function evercraft:treasure/particles/uncommon/frames/f9
execute if score @s ec.plot matches 10 run function evercraft:treasure/particles/uncommon/frames/f10
execute if score @s ec.plot matches 11 run function evercraft:treasure/particles/uncommon/frames/f11
execute if score @s ec.plot matches 12 run function evercraft:treasure/particles/uncommon/frames/f12
execute if score @s ec.plot matches 13 run function evercraft:treasure/particles/uncommon/frames/f13
execute if score @s ec.plot matches 14 run function evercraft:treasure/particles/uncommon/frames/f14
execute if score @s ec.plot matches 15 run particle firework ~ ~ ~ 0 0 0 0.01 5 force

execute if score @s ec.plot matches 14 run playsound minecraft:block.note_block.chime master @a[distance=..10] ~ ~ ~ 0.1 0.4 0.2
execute if score @s ec.plot matches 12 run playsound minecraft:block.note_block.chime master @a[distance=..10] ~ ~ ~ 0.2 0.7 0.4
execute if score @s ec.plot matches 10 run playsound minecraft:block.note_block.chime master @a[distance=..10] ~ ~ ~ 0.3 1.0 0.6
execute if score @s ec.plot matches 8 run playsound minecraft:block.note_block.chime master @a[distance=..10] ~ ~ ~ 0.4 1.3 0.8
execute if score @s ec.plot matches 6 run playsound minecraft:block.note_block.chime master @a[distance=..10] ~ ~ ~ 0.5 1.6 1
execute if score @s ec.plot matches 4 run playsound minecraft:block.note_block.chime master @a[distance=..10] ~ ~ ~ 0.6 1.9 1
execute if score @s ec.plot matches 2 run playsound minecraft:block.note_block.chime master @a[distance=..10] ~ ~ ~ 0.7 2 1

execute at @s[tag=ec.badlands,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/badlands/uncommon with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.basalt_deltas,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/basalt_deltas/uncommon with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.crimson_forest,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/crimson_forest/uncommon with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.dark_forest,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/dark_forest/uncommon with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.deep_dark,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/deep_dark/uncommon with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.default,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/default/uncommon with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.desert,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/desert/uncommon with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.dripstone,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/dripstone/uncommon with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.default_end,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/default_end/uncommon with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.flower,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/flower/uncommon with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.ice,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/ice/uncommon with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.jungle,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/jungle/uncommon with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.lush_cave,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/lush_caves/uncommon with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.mountain,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/mountain/uncommon with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.mushroom,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/mushroom/uncommon with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.default_nether,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/default_nether/uncommon with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.ocean,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/ocean/uncommon with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.savanna,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/savanna/uncommon with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.soul_valley,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/soul_valley/uncommon with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.swamp,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/swamp/uncommon with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.taiga,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/taiga/uncommon with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.warped_forest,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/warped_forest/uncommon with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.wind,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/wind/uncommon with entity @s equipment.feet.components."minecraft:custom_data"

scoreboard players remove @s ec.plot 1
