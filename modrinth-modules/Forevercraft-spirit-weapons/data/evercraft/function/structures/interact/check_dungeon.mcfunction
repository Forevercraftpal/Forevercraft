# Check for dungeon floor (cobblestone or mossy cobblestone beneath chest)
# Dungeons have these floors, and chests sit on them

# Check directly below chest
execute if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players set @s cf.tier 2
execute if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players set @s cf.struct_id 19
execute if score @s cf.tier matches 0 if block ~ ~-1 ~ minecraft:mossy_cobblestone run scoreboard players set @s cf.tier 2
execute if score @s cf.struct_id matches 0 if block ~ ~-1 ~ minecraft:mossy_cobblestone run scoreboard players set @s cf.struct_id 19

