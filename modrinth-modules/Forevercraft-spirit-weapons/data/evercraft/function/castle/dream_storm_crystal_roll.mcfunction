# Infinite Castle — Dream Storm Crystal Drop Roll
# Called as each player after clearing floors 26+
# 1% chance per player per floor clear

# Roll 1-100, crystal drops on 1
execute store result score #ic_crystal_roll ec.var run random value 1..100
execute if score #ic_crystal_roll ec.var matches 1 at @s run function evercraft:castle/give_dream_storm_crystal
