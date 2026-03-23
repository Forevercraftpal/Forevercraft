# Guild Stone — Raycast forward to find placed lodestone (max 16 blocks, 80 steps at 0.2)
# Run anchored eyes, positioned ^ ^ ^offset
scoreboard players add @s ec.gs_temp 1

# Check if we hit a lodestone at current position that has NO marker yet (newly placed)
execute if block ~ ~ ~ minecraft:lodestone unless entity @e[type=marker,tag=ec.lodestone_registered,distance=..1,limit=1] align xyz run function evercraft:guild/stone/setup_guild_stone

# Continue raycast if not found and under limit (80 steps * 0.2 = 16 blocks)
execute if score @s ec.gs_temp matches ..80 unless block ~ ~ ~ minecraft:lodestone positioned ^ ^ ^0.2 run function evercraft:guild/stone/raycast_place

# Continue past lodestones that already have a marker (existing guidestones/guild stones)
execute if score @s ec.gs_temp matches ..80 if block ~ ~ ~ minecraft:lodestone if entity @e[type=marker,tag=ec.lodestone_registered,distance=..1,limit=1] positioned ^ ^ ^0.2 run function evercraft:guild/stone/raycast_place

# Reset counter when done
execute if score @s ec.gs_temp matches 81.. run scoreboard players set @s ec.gs_temp 0
