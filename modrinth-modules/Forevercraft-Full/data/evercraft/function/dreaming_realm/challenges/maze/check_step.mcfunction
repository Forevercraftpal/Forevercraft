# Memory Maze — Check Step (called from challenges/tick)
# Detect which colored wool the player is standing on
# Context: as @s = dreaming player with dr.maze_input tag, at @s

# Skip if player is still on same color (debounce)
execute if entity @s[tag=dr.maze_on_color] run return 0

# Detect color under player's feet (Y-1 from player standing on pressure plate)
scoreboard players set @s ec.temp 0
execute at @s if block ~ ~-1 ~ red_wool run scoreboard players set @s ec.temp 1
execute at @s if block ~ ~-1 ~ blue_wool run scoreboard players set @s ec.temp 2
execute at @s if block ~ ~-1 ~ green_wool run scoreboard players set @s ec.temp 3
execute at @s if block ~ ~-1 ~ yellow_wool run scoreboard players set @s ec.temp 4

# No color detected — skip
execute if score @s ec.temp matches 0 run return 0

# Debounce — tag until player leaves the color
tag @s add dr.maze_on_color

# Get expected color for current sequence position
scoreboard players set #dr_expect ec.var 0
execute if score @s ec.dream_seq matches 0 store result score #dr_expect ec.var run data get storage evercraft:dreaming seq1
execute if score @s ec.dream_seq matches 1 store result score #dr_expect ec.var run data get storage evercraft:dreaming seq2
execute if score @s ec.dream_seq matches 2 store result score #dr_expect ec.var run data get storage evercraft:dreaming seq3
execute if score @s ec.dream_seq matches 3 store result score #dr_expect ec.var run data get storage evercraft:dreaming seq4

# Compare
execute if score @s ec.temp = #dr_expect ec.var run function evercraft:dreaming_realm/challenges/maze/on_correct
execute unless score @s ec.temp = #dr_expect ec.var run function evercraft:dreaming_realm/challenges/maze/on_wrong
