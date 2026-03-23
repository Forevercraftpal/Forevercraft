# Crop Harvest — 3% cooking ingredient drop
# Run as individual player at their position (multiplayer-safe)
# Uses per-player score instead of shared fake player to avoid race conditions

execute store result score @s ec.temp run random value 1..100
execute if score @s ec.temp matches 1..3 run loot spawn ~ ~ ~ loot evercraft:ingredients/random_cooking
execute if score @s ec.temp matches 1..3 run tellraw @s [{text:"[Harvest] ",color:"green"},{text:"An ingredient fell from the crops!",color:"yellow"}]
