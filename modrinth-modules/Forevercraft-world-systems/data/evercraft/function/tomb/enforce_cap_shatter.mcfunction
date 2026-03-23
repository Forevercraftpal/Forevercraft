# Tomb System — Shatter Oldest Grave (cap enforcement)
# @s = player who has 3+ graves
# Find the grave with the lowest ec.tomb_id that belongs to this player and shatter it
# Uses #tomb_p_uuid0-3 ec.temp set by enforce_cap.mcfunction

# Set search minimum to a very high number
scoreboard players set #tomb_min_id ec.temp 2147483647

# Find the minimum grave ID among this player's graves
execute as @e[type=marker,tag=ec.tomb_data] if score @s ec.tomb_uuid0 = #tomb_p_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_p_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_p_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_p_uuid3 ec.temp if score @s ec.tomb_id < #tomb_min_id ec.temp run scoreboard players operation #tomb_min_id ec.temp = @s ec.tomb_id

# Now shatter the grave with that minimum ID
execute as @e[type=marker,tag=ec.tomb_data] if score @s ec.tomb_id = #tomb_min_id ec.temp at @s run function evercraft:tomb/shatter
