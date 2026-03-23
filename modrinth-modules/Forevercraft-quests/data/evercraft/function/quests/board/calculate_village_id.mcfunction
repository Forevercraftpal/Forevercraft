# ============================================================
# Calculate Village ID
# Creates a unique ID based on position (chunk-based)
# Returns the ID via command result
# ============================================================

# Use chunk coordinates as village ID (X * 10000 + Z)
# This ensures same village area gets same ID
execute store result score #temp_x quests.temp run data get entity @s Pos[0]
execute store result score #temp_z quests.temp run data get entity @s Pos[2]

# Convert to chunk coords (divide by 16)
scoreboard players operation #temp_x quests.temp /= #16 ec.const
scoreboard players operation #temp_z quests.temp /= #16 ec.const

# Create combined ID: x * 10000 + z
scoreboard players operation #temp_x quests.temp *= #10000 ec.const
scoreboard players operation #temp_x quests.temp += #temp_z quests.temp

# Return the value
return run scoreboard players get #temp_x quests.temp
