# Guild — Join guild after accepting invite
# @s = player joining, ec.guild_inv_from = guild ID to join

# Set guild membership
scoreboard players operation @s ec.guild_id = @s ec.guild_inv_from
scoreboard players set @s ec.guild_rank 1
scoreboard players set @s ec.guild_contrib 0
scoreboard players set @s ec.ge_weekly_contrib 0

# Clear invite data
scoreboard players set @s ec.guild_inv_from 0
scoreboard players set @s ec.guild_inv_cd 0

# Add to guild member storage
execute store result storage evercraft:guild temp.id int 1 run scoreboard players get @s ec.guild_id
execute store result storage evercraft:guild temp.uuid3 int 1 run scoreboard players get @s companion.id
data modify storage evercraft:guild temp.player_name set from entity @s CustomName
function evercraft:guild/join_storage with storage evercraft:guild temp

# Increment member count on guild marker
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run function evercraft:guild/increment_members

# Sync guild zone data to new member
function evercraft:guild/zone/sync

# Announce join
execute store result storage evercraft:guild temp.id int 1 run scoreboard players get @s ec.guild_id
function evercraft:guild/announce_join with storage evercraft:guild temp
