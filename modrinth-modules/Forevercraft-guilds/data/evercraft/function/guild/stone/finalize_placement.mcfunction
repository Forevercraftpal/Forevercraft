# Guild Stone — Finalize after guild creation
# Run as: the ec.guildstone marker entity (ec.gs_pending)
# Run after guild creation — assigns guild_id, registers in network, saves zone

# Assign guild_id from the nearest player (the guild creator)
scoreboard players operation @s ec.guild_id = @p ec.guild_id

# Upgrade from pending to registered
tag @s remove ec.gs_pending
tag @s add ec.gs_registered
tag @s add ec.gs_new

# Register in guidestone network
execute at @s run function evercraft:guild/stone/register_guidestone

# Remove the new tag
tag @s remove ec.gs_new

# Save zone coords on guild marker
execute store result score #gs_zone_x ec.temp run data get entity @s Pos[0]
execute store result score #gs_zone_y ec.temp run data get entity @s Pos[1]
execute store result score #gs_zone_z ec.temp run data get entity @s Pos[2]
scoreboard players set #gs_zone_dim ec.temp 0
execute if dimension minecraft:the_nether run scoreboard players set #gs_zone_dim ec.temp 1
execute if dimension minecraft:the_end run scoreboard players set #gs_zone_dim ec.temp 2

scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute store result storage evercraft:guild temp.zone_x int 1 run scoreboard players get #gs_zone_x ec.temp
execute store result storage evercraft:guild temp.zone_y int 1 run scoreboard players get #gs_zone_y ec.temp
execute store result storage evercraft:guild temp.zone_z int 1 run scoreboard players get #gs_zone_z ec.temp
execute store result storage evercraft:guild temp.zone_dim int 1 run scoreboard players get #gs_zone_dim ec.temp
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run function evercraft:guild/stone/save_zone with storage evercraft:guild temp

# Sync zone data to all online guild members' scoreboards
execute as @p[scores={ec.guild_id=1..}] if score @s ec.guild_id = #Search ec.guild_id run function evercraft:guild/zone/sync
