# Guild Zone — Read zone data from guild marker entity
# Run as: guild marker entity (@s = marker with data.zone)
# Caller set #Search ec.guild_id; all guilded players with matching ID get updated

# Check if zone data exists
execute unless data entity @s data.zone run return 0

# Read zone coords into temp scores
execute store result score #gz_sync_x ec.temp run data get entity @s data.zone.x
execute store result score #gz_sync_y ec.temp run data get entity @s data.zone.y
execute store result score #gz_sync_z ec.temp run data get entity @s data.zone.z
execute store result score #gz_sync_dim ec.temp run data get entity @s data.zone.dim

# Apply to all online members of this guild
execute as @a[scores={ec.guild_id=1..}] if score @s ec.guild_id = #Search ec.guild_id run scoreboard players operation @s ec.guild_zone_x = #gz_sync_x ec.temp
execute as @a[scores={ec.guild_id=1..}] if score @s ec.guild_id = #Search ec.guild_id run scoreboard players operation @s ec.guild_zone_y = #gz_sync_y ec.temp
execute as @a[scores={ec.guild_id=1..}] if score @s ec.guild_id = #Search ec.guild_id run scoreboard players operation @s ec.guild_zone_z = #gz_sync_z ec.temp
execute as @a[scores={ec.guild_id=1..}] if score @s ec.guild_id = #Search ec.guild_id run scoreboard players operation @s ec.guild_zone_dim = #gz_sync_dim ec.temp
