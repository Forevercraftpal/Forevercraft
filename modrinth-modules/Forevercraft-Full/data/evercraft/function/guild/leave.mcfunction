# Guild — Leave guild
# @s = player leaving

# Can't leave if you're the creator (Valorous rank 7 with creator flag)
# Actually: anyone can leave. If Valorous leaves, guild persists.

# Store guild ID before clearing
execute store result storage evercraft:guild temp.id int 1 run scoreboard players get @s ec.guild_id

# Announce before clearing membership
tellraw @s [{text:"[Guild] ",color:"green"},{text:"You have left the guild.",color:"gray"}]
function evercraft:guild/announce_leave

# Remove buffs
function evercraft:guild/buffs/remove

# Retrieve all guild companions placed by this player
function evercraft:guild/pets/retrieve_all

# Decrement member count on guild marker
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run function evercraft:guild/decrement_members

# Remove from member storage
execute store result storage evercraft:guild temp.uuid3 int 1 run scoreboard players get @s companion.id
function evercraft:guild/leave_storage with storage evercraft:guild temp

# Clear all guild scores
scoreboard players set @s ec.guild_id 0
scoreboard players set @s ec.guild_rank 0
scoreboard players set @s ec.guild_contrib 0
scoreboard players set @s ec.guild_in_zone 0

