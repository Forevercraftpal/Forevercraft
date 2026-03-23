# Raycast forward to find a barrel block (max 16 blocks, 80 steps at 0.2)
scoreboard players add @s cf.temp 1

# Check if we hit a barrel at current position
execute if block ~ ~ ~ minecraft:barrel align xyz positioned ~0.5 ~0.5 ~0.5 run function evercraft:structures/interact/found_barrel

# Continue raycast if not found and under limit
execute if score @s cf.temp matches ..80 unless block ~ ~ ~ minecraft:barrel positioned ^ ^ ^0.2 run function evercraft:structures/interact/raycast_barrel

# Reset counter when done
execute if score @s cf.temp matches 81.. run scoreboard players set @s cf.temp 0
