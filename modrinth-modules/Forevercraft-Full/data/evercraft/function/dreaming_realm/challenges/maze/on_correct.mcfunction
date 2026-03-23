# Memory Maze — Correct Step
# Context: as @s = dreaming player

# Advance sequence position
scoreboard players add @s ec.dream_seq 1

# Feedback
playsound block.note_block.chime master @s ~ ~ ~ 1.0 1.5
particle end_rod ~ ~1 ~ 0.3 0.3 0.3 0.05 5 normal @s

# Check if all 4 steps complete
execute if score @s ec.dream_seq matches 4.. run function evercraft:dreaming_realm/challenges/maze/on_complete
