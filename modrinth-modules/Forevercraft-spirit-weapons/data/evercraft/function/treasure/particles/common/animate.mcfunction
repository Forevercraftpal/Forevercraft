execute if score @s ec.plot matches 2 run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.01 20 force
execute if score @s ec.plot matches 0 run function evercraft:treasure/particles/common/frames/f0
execute if score @s ec.plot matches 1 run function evercraft:treasure/particles/common/frames/f1
execute if score @s ec.plot matches 2 run function evercraft:treasure/particles/common/frames/f2
execute if score @s ec.plot matches 3 run function evercraft:treasure/particles/common/frames/f3
execute if score @s ec.plot matches 4 run function evercraft:treasure/particles/common/frames/f4
execute if score @s ec.plot matches 5 run function evercraft:treasure/particles/common/frames/f5
execute if score @s ec.plot matches 6 run function evercraft:treasure/particles/common/frames/f6
execute if score @s ec.plot matches 7 run function evercraft:treasure/particles/common/frames/f7
execute if score @s ec.plot matches 8 run function evercraft:treasure/particles/common/frames/f8
execute if score @s ec.plot matches 9 run function evercraft:treasure/particles/common/frames/f9
execute if score @s ec.plot matches 10 run function evercraft:treasure/particles/common/frames/f10
execute if score @s ec.plot matches 11 run function evercraft:treasure/particles/common/frames/f11
execute if score @s ec.plot matches 12 run function evercraft:treasure/particles/common/frames/f12
execute if score @s ec.plot matches 13 run function evercraft:treasure/particles/common/frames/f13
execute if score @s ec.plot matches 14 run function evercraft:treasure/particles/common/frames/f14
execute if score @s ec.plot matches 15 run particle firework ~ ~ ~ 0 0 0 0.01 3 force

execute if score @s ec.plot matches 14 run playsound minecraft:block.note_block.harp master @a[distance=..10] ~ ~ ~ 0.1 0.3 0.2
execute if score @s ec.plot matches 12 run playsound minecraft:block.note_block.harp master @a[distance=..10] ~ ~ ~ 0.2 0.6 0.4
execute if score @s ec.plot matches 10 run playsound minecraft:block.note_block.harp master @a[distance=..10] ~ ~ ~ 0.3 0.9 0.6
execute if score @s ec.plot matches 8 run playsound minecraft:block.note_block.harp master @a[distance=..10] ~ ~ ~ 0.4 1.2 0.8
execute if score @s ec.plot matches 6 run playsound minecraft:block.note_block.harp master @a[distance=..10] ~ ~ ~ 0.5 1.5 1
execute if score @s ec.plot matches 4 run playsound minecraft:block.note_block.harp master @a[distance=..10] ~ ~ ~ 0.6 1.8 1
execute if score @s ec.plot matches 2 run playsound minecraft:block.note_block.harp master @a[distance=..10] ~ ~ ~ 0.7 2 1

execute at @s[tag=ec.badlands,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/badlands/common with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.basalt_deltas,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/basalt_deltas/common with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.crimson_forest,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/crimson_forest/common with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.dark_forest,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/dark_forest/common with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.deep_dark,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/deep_dark/common with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.default,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/default/common with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.desert,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/desert/common with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.dripstone,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/dripstone/common with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.default_end,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/default_end/common with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.flower,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/flower/common with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.ice,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/ice/common with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.jungle,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/jungle/common with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.lush_cave,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/lush_caves/common with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.mountain,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/mountain/common with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.mushroom,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/mushroom/common with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.default_nether,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/default_nether/common with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.ocean,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/ocean/common with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.savanna,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/savanna/common with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.soul_valley,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/soul_valley/common with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.swamp,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/swamp/common with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.taiga,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/taiga/common with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.warped_forest,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/warped_forest/common with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.wind,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/wind/common with entity @s equipment.feet.components."minecraft:custom_data"

scoreboard players remove @s ec.plot 1