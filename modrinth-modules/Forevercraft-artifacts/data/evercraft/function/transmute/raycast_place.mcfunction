# Raycast forward to find the placed lodestone block (max 16 blocks, 80 steps at 0.2)
# Run anchored eyes, positioned ^ ^ ^offset
scoreboard players add @s tx.temp 1

# Check if we hit a lodestone with no TX marker yet (newly placed)
execute if block ~ ~ ~ minecraft:lodestone unless entity @e[type=marker,tag=TX.Marker,dx=0,dy=0,dz=0,limit=1] unless entity @e[type=marker,tag=ec.gs_marker,dx=0,dy=0,dz=0,limit=1] align xyz run function evercraft:transmute/setup_anvil

# Continue raycast if not found (80 steps * 0.2 = 16 blocks)
execute if score @s tx.temp matches ..80 unless block ~ ~ ~ minecraft:lodestone positioned ^ ^ ^0.2 run function evercraft:transmute/raycast_place

# Skip lodestones that already have markers (guidestones or other transmute anvils)
execute if score @s tx.temp matches ..80 if block ~ ~ ~ minecraft:lodestone if entity @e[type=marker,tag=ec.gs_marker,dx=0,dy=0,dz=0,limit=1] positioned ^ ^ ^0.2 run function evercraft:transmute/raycast_place
execute if score @s tx.temp matches ..80 if block ~ ~ ~ minecraft:lodestone if entity @e[type=marker,tag=TX.Marker,dx=0,dy=0,dz=0,limit=1] positioned ^ ^ ^0.2 run function evercraft:transmute/raycast_place

# Reset counter when done
execute if score @s tx.temp matches 81.. run scoreboard players set @s tx.temp 0
