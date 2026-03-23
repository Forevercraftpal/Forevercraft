# Guild Kick — Remove kicked player from guild
# @s = the player being kicked

# Announce
tellraw @a[scores={ec.guild_id=1..}] [{text:"[Guild] ",color:"green"},{selector:"@s"},{text:" has been kicked from the guild by majority vote.",color:"red"}]
tellraw @s [{text:"[Guild] ",color:"green"},{text:"You have been kicked from the guild.",color:"red"}]

# Remove buffs
function evercraft:guild/buffs/remove

# Retrieve all guild companions placed by this player
function evercraft:guild/pets/retrieve_all

# Decrement member count
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run function evercraft:guild/decrement_members

# Remove from storage
execute store result storage evercraft:guild temp.id int 1 run scoreboard players get @s ec.guild_id
execute store result storage evercraft:guild temp.uuid3 int 1 run scoreboard players get @s companion.id
function evercraft:guild/leave_storage with storage evercraft:guild temp

# Clear scores
scoreboard players set @s ec.guild_id 0
scoreboard players set @s ec.guild_rank 0
scoreboard players set @s ec.guild_contrib 0
scoreboard players set @s ec.guild_in_zone 0

