# Raycast forward to find the vault block (max 16 blocks, 80 steps at 0.2)
scoreboard players add @s cf.temp 1

# Check if we hit a vault at current position
execute if block ~ ~ ~ minecraft:vault align xyz positioned ~0.5 ~0.5 ~0.5 run function evercraft:structures/interact/vault_hit

# Continue raycast if not found and under limit
execute if score @s cf.temp matches ..80 unless block ~ ~ ~ minecraft:vault positioned ^ ^ ^0.2 run function evercraft:structures/interact/raycast_vault

# Reset counter when done
execute if score @s cf.temp matches 81.. run scoreboard players set @s cf.temp 0
