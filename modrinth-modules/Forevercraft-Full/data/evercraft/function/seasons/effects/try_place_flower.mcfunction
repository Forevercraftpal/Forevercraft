# Spring — Try to place a flower near player
# Run as player, at player position
# Places common flowers at fixed offsets, random flower type at random offsets
# No torchflowers or pitcher pods (special crops only)
# 0.5% chance for a wither rose at one position

# Common flowers at fixed offsets
execute positioned ~8 ~0 ~3 if block ~ ~-1 ~ grass_block if block ~ ~ ~ air run setblock ~ ~ ~ dandelion
execute positioned ~-5 ~0 ~7 if block ~ ~-1 ~ grass_block if block ~ ~ ~ air run setblock ~ ~ ~ poppy
execute positioned ~3 ~0 ~-6 if block ~ ~-1 ~ grass_block if block ~ ~ ~ air run setblock ~ ~ ~ cornflower

# Random flower type at random offsets
execute store result score #fl_pick ec.temp run random value 1..6
execute positioned ~-7 ~0 ~-4 if block ~ ~-1 ~ grass_block if block ~ ~ ~ air if score #fl_pick ec.temp matches 1 run setblock ~ ~ ~ azure_bluet
execute positioned ~6 ~0 ~-8 if block ~ ~-1 ~ grass_block if block ~ ~ ~ air if score #fl_pick ec.temp matches 2 run setblock ~ ~ ~ oxeye_daisy
execute positioned ~-3 ~0 ~5 if block ~ ~-1 ~ grass_block if block ~ ~ ~ air if score #fl_pick ec.temp matches 3 run setblock ~ ~ ~ allium
execute positioned ~4 ~0 ~6 if block ~ ~-1 ~ grass_block if block ~ ~ ~ air if score #fl_pick ec.temp matches 4 run setblock ~ ~ ~ lily_of_the_valley
execute positioned ~-8 ~0 ~2 if block ~ ~-1 ~ grass_block if block ~ ~ ~ air if score #fl_pick ec.temp matches 5 run setblock ~ ~ ~ blue_orchid
execute positioned ~7 ~0 ~-3 if block ~ ~-1 ~ grass_block if block ~ ~ ~ air if score #fl_pick ec.temp matches 6 run setblock ~ ~ ~ pink_tulip

# Wither rose — 0.5% chance (1 in 200)
execute store result score #fl_rare ec.temp run random value 1..200
execute if score #fl_rare ec.temp matches 1 positioned ~-2 ~0 ~-8 if block ~ ~-1 ~ grass_block if block ~ ~ ~ air run setblock ~ ~ ~ wither_rose
