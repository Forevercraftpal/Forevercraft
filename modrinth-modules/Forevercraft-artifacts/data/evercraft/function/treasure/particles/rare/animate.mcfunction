execute if score @s ec.plot matches 1 run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.01 20 force
execute if score @s ec.plot matches 0 run function evercraft:treasure/particles/rare/frames/f0
execute if score @s ec.plot matches 1 run function evercraft:treasure/particles/rare/frames/f1
execute if score @s ec.plot matches 2 run function evercraft:treasure/particles/rare/frames/f2
execute if score @s ec.plot matches 3 run function evercraft:treasure/particles/rare/frames/f3
execute if score @s ec.plot matches 4 run function evercraft:treasure/particles/rare/frames/f4
execute if score @s ec.plot matches 5 run function evercraft:treasure/particles/rare/frames/f5
execute if score @s ec.plot matches 6 run function evercraft:treasure/particles/rare/frames/f6
execute if score @s ec.plot matches 7 run function evercraft:treasure/particles/rare/frames/f7
execute if score @s ec.plot matches 8 run function evercraft:treasure/particles/rare/frames/f8
execute if score @s ec.plot matches 9 run function evercraft:treasure/particles/rare/frames/f9
execute if score @s ec.plot matches 10 run function evercraft:treasure/particles/rare/frames/f10
execute if score @s ec.plot matches 11 run function evercraft:treasure/particles/rare/frames/f11
execute if score @s ec.plot matches 12 run function evercraft:treasure/particles/rare/frames/f12
execute if score @s ec.plot matches 13 run function evercraft:treasure/particles/rare/frames/f13
execute if score @s ec.plot matches 14 run function evercraft:treasure/particles/rare/frames/f14
execute if score @s ec.plot matches 15 run particle soul_fire_flame ~ ~ ~ 0 0 0 0.01 3 force

execute if score @s ec.plot matches 14 run playsound minecraft:block.note_block.chime master @a[distance=..20] ~ ~ ~ 0.5 0.3 0.2
execute if score @s ec.plot matches 12 run playsound minecraft:block.note_block.chime master @a[distance=..20] ~ ~ ~ 0.6 0.6 0.4
execute if score @s ec.plot matches 10 run playsound minecraft:block.note_block.chime master @a[distance=..20] ~ ~ ~ 0.7 0.9 0.6
execute if score @s ec.plot matches 8 run playsound minecraft:block.note_block.chime master @a[distance=..20] ~ ~ ~ 0.8 1.2 0.8
execute if score @s ec.plot matches 6 run playsound minecraft:block.note_block.chime master @a[distance=..20] ~ ~ ~ 0.9 1.5 1
execute if score @s ec.plot matches 4 run playsound minecraft:block.note_block.chime master @a[distance=..20] ~ ~ ~ 1 1.8 1
execute if score @s ec.plot matches 2 run playsound minecraft:block.note_block.chime master @a[distance=..20] ~ ~ ~ 1.1 2 1

execute at @s[tag=ec.badlands,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/badlands/rare with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.basalt_deltas,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/basalt_deltas/rare with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.crimson_forest,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/crimson_forest/rare with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.dark_forest,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/dark_forest/rare with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.deep_dark,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/deep_dark/rare with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.default,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/default/rare with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.desert,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/desert/rare with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.dripstone,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/dripstone/rare with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.default_end,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/default_end/rare with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.flower,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/flower/rare with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.ice,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/ice/rare with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.jungle,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/jungle/rare with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.lush_cave,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/lush_caves/rare with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.mountain,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/mountain/rare with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.mushroom,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/mushroom/rare with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.default_nether,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/default_nether/rare with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.ocean,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/ocean/rare with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.savanna,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/savanna/rare with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.soul_valley,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/soul_valley/rare with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.swamp,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/swamp/rare with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.taiga,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/taiga/rare with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.warped_forest,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/warped_forest/rare with entity @s equipment.feet.components."minecraft:custom_data"
execute at @s[tag=ec.wind,scores={ec.plot=1}] run function evercraft:treasure/treasure/biomes/wind/rare with entity @s equipment.feet.components."minecraft:custom_data"

scoreboard players remove @s ec.plot 1