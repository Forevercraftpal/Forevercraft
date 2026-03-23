# Sapling Auto-Replant — Try to plant this sapling item
# Run as item entity at its position
# 33% chance, must be on plantable ground, block must be air
# Tracks attempts — caller stops calling after 3 failures

# Count this attempt
scoreboard players add @s ec.sapling_try 1

# 33% chance: roll 1-3, plant only on 1
execute store result score #rand ec.var run random value 1..3
execute unless score #rand ec.var matches 1 run return 0

# Must be in air and on plantable ground (grass_block, dirt, podzol, rooted_dirt, moss_block, mud, muddy_mangrove_roots)
execute unless block ~ ~ ~ minecraft:air run return 0
execute unless predicate evercraft:world/plantable_ground run return 0

# Place the correct sapling type and kill the item
execute if data entity @s {Item:{id:"minecraft:oak_sapling"}} run setblock ~ ~ ~ minecraft:oak_sapling
execute if data entity @s {Item:{id:"minecraft:spruce_sapling"}} run setblock ~ ~ ~ minecraft:spruce_sapling
execute if data entity @s {Item:{id:"minecraft:birch_sapling"}} run setblock ~ ~ ~ minecraft:birch_sapling
execute if data entity @s {Item:{id:"minecraft:jungle_sapling"}} run setblock ~ ~ ~ minecraft:jungle_sapling
execute if data entity @s {Item:{id:"minecraft:acacia_sapling"}} run setblock ~ ~ ~ minecraft:acacia_sapling
execute if data entity @s {Item:{id:"minecraft:dark_oak_sapling"}} run setblock ~ ~ ~ minecraft:dark_oak_sapling
execute if data entity @s {Item:{id:"minecraft:cherry_sapling"}} run setblock ~ ~ ~ minecraft:cherry_sapling
execute if data entity @s {Item:{id:"minecraft:mangrove_propagule"}} run setblock ~ ~ ~ minecraft:mangrove_propagule

# If block was placed (no longer air), show particles and kill item
execute unless block ~ ~ ~ minecraft:air run particle minecraft:happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0 5
execute unless block ~ ~ ~ minecraft:air run playsound minecraft:block.grass.place ambient @a[distance=..16] ~ ~ ~ 0.5 1.2
execute unless block ~ ~ ~ minecraft:air run kill @s
