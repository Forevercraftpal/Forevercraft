# Raycast forward to find the placed lodestone block (max 16 blocks, 80 steps at 0.2)
# Run anchored eyes, positioned ^ ^ ^offset
scoreboard players add @s ec.gs_temp 1

# Check if we hit a lodestone at current position that has NO marker yet (newly placed)
# align xyz snaps to block corner so entities spawn at correct grid position
execute if block ~ ~ ~ minecraft:lodestone unless entity @e[type=marker,tag=ec.gs_marker,dx=0,dy=0,dz=0,limit=1] align xyz run function evercraft:guidestone/setup_guidestone

# Continue raycast if not found and under limit (80 steps * 0.2 = 16 blocks)
execute if score @s ec.gs_temp matches ..80 unless block ~ ~ ~ minecraft:lodestone positioned ^ ^ ^0.2 run function evercraft:guidestone/raycast_place

# Continue past lodestones that already have a marker (existing guidestones)
# Without this, the raycast stops dead on registered guidestones and never finds the new one
execute if score @s ec.gs_temp matches ..80 if block ~ ~ ~ minecraft:lodestone if entity @e[type=marker,tag=ec.gs_marker,dx=0,dy=0,dz=0,limit=1] positioned ^ ^ ^0.2 run function evercraft:guidestone/raycast_place

# Reset counter when done
execute if score @s ec.gs_temp matches 81.. run scoreboard players set @s ec.gs_temp 0
