# Tomb System — Enforce 3-Grave Cap
# @s = player who just died
# If player already has 3 active graves, shatter the oldest (lowest ec.tomb_id)

# Store dying player's UUID scores to temp for comparison inside entity loop
execute store result score #tomb_p_uuid0 ec.temp run scoreboard players get @s ec.tomb_uuid0
execute store result score #tomb_p_uuid1 ec.temp run scoreboard players get @s ec.tomb_uuid1
execute store result score #tomb_p_uuid2 ec.temp run scoreboard players get @s ec.tomb_uuid2
execute store result score #tomb_p_uuid3 ec.temp run scoreboard players get @s ec.tomb_uuid3

# Count this player's active graves by checking UUID match
scoreboard players set #tomb_p_count ec.temp 0
execute as @e[type=marker,tag=ec.tomb_data] if score @s ec.tomb_uuid0 = #tomb_p_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_p_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_p_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_p_uuid3 ec.temp run scoreboard players add #tomb_p_count ec.temp 1

# Copy count back to player
scoreboard players operation @s ec.tomb_count = #tomb_p_count ec.temp

# If 3 or more exist, find and shatter the oldest
execute if score @s ec.tomb_count matches 3.. run function evercraft:tomb/enforce_cap_shatter
