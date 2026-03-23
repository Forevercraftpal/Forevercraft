# Dreaming Realm — Memory Maze: Start
# Generate a random 4-color sequence and show it to the player
# Context: as @s = dreaming player
# NW Island: X -18 to -10, Z -18 to -10 (relative to arena center)

# Reset sequence position
scoreboard players set @s ec.dream_seq 0

# Generate 4-step random sequence (stored in storage as array)
# Each step is a color 1-4: 1=red, 2=blue, 3=green, 4=yellow
execute store result storage evercraft:dreaming seq1 int 1 run random value 1..4
execute store result storage evercraft:dreaming seq2 int 1 run random value 1..4
execute store result storage evercraft:dreaming seq3 int 1 run random value 1..4
execute store result storage evercraft:dreaming seq4 int 1 run random value 1..4

# Place pressure plates on the 4 colored wool positions in the maze
# Grid layout: 2x2 at center of NW island
# Colors at fixed positions — player must step on them in sequence order
execute at @e[type=marker,tag=dr.center,limit=1] run setblock ~-16 301 ~-16 red_wool
execute at @e[type=marker,tag=dr.center,limit=1] run setblock ~-12 301 ~-16 blue_wool
execute at @e[type=marker,tag=dr.center,limit=1] run setblock ~-16 301 ~-12 green_wool
execute at @e[type=marker,tag=dr.center,limit=1] run setblock ~-12 301 ~-12 yellow_wool

# Place pressure plates on each color
execute at @e[type=marker,tag=dr.center,limit=1] run setblock ~-16 302 ~-16 stone_pressure_plate
execute at @e[type=marker,tag=dr.center,limit=1] run setblock ~-12 302 ~-16 stone_pressure_plate
execute at @e[type=marker,tag=dr.center,limit=1] run setblock ~-16 302 ~-12 stone_pressure_plate
execute at @e[type=marker,tag=dr.center,limit=1] run setblock ~-12 302 ~-12 stone_pressure_plate

# Announce challenge
tellraw @s [{text:""},{"text":"✦ ","color":"gold"},{"text":"The Memory Maze","color":"#9B59B6","bold":true},{"text":" — Watch the sequence, then repeat it.","color":"#D4A574","italic":true}]

# Show the sequence with timed visual cues
schedule function evercraft:dreaming_realm/challenges/maze/show_sequence 2s
