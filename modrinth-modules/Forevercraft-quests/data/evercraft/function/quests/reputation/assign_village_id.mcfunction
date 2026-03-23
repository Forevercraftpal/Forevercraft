# ============================================================
# Assign Village ID to Entity
# Calculates a unique ID based on chunk coordinates (X * 10000 + Z)
# Execute as the entity (armor stand) that needs an ID
# ============================================================

# Get X coordinate and convert to chunk
execute store result score @s ec.village_id run data get entity @s Pos[0]
scoreboard players operation @s ec.village_id /= #16 ec.const

# Multiply X chunk by 10000
scoreboard players operation @s ec.village_id *= #10000 ec.const

# Get Z coordinate and convert to chunk
execute store result score #temp_z quests.temp run data get entity @s Pos[2]
scoreboard players operation #temp_z quests.temp /= #16 ec.const

# Add Z chunk to create combined ID
scoreboard players operation @s ec.village_id += #temp_z quests.temp
