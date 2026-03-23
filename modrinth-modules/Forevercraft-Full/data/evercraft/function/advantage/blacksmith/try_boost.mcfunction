# Boost furnaces in 3x3x3 area around player
# Calculate extra cook ticks per second: level * 4 / 100 * 200 (200 = full cook time)
# Simplified: level * 8 ticks added per second (at level 25: 200 ticks = instant)

# Calculate bonus ticks: level * 8
scoreboard players operation #boost adv.temp = @s adv.blacksmith
scoreboard players set #8 adv.temp 8
scoreboard players operation #boost adv.temp *= #8 adv.temp

# Prestige P1: Master Alloy — double furnace speed boost
execute if score @s adv.pa_blac1 matches 1 run scoreboard players operation #boost adv.temp *= #2 adv.temp

# Store for macro
execute store result storage evercraft:advantage cook_boost int 1 run scoreboard players get #boost adv.temp

# Check each position in a 3x3x3 cube for furnaces/blast furnaces/smokers
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~ ~-1 ~1 if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
execute positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:furnace[lit=true] run function evercraft:advantage/blacksmith/boost_block with storage evercraft:advantage
