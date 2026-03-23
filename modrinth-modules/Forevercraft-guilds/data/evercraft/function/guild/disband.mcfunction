# Guild — Disband guild (Valorous only)
# @s = player attempting to disband

# Validate: must be Valorous (rank 7)
execute unless score @s ec.guild_rank matches 7 run tellraw @s [{text:"[Guild] ",color:"green"},{text:"Only the guild founder (Valorous) can disband the guild!",color:"red"}]
execute unless score @s ec.guild_rank matches 7 run return 0

# Store guild ID
execute store result storage evercraft:guild temp.id int 1 run scoreboard players get @s ec.guild_id
scoreboard players operation #Search ec.guild_id = @s ec.guild_id

# Announce disbanding
tellraw @a[scores={ec.guild_id=1..}] [{text:"[Guild] ",color:"green"},{selector:"@s"},{text:" has disbanded the guild!",color:"red"}]

# Remove buffs and clear scores for ALL members of this guild (single pass)
execute as @a if score @s ec.guild_id = #Search ec.guild_id run function evercraft:guild/disband_member

# Kill all guild companion entities belonging to this guild
execute as @e[type=chicken,tag=GuildCompanion] if score @s ec.guild_id = #Search ec.guild_id run kill @s
execute as @e[type=item_display,tag=GC.Head] if score @s ec.guild_id = #Search ec.guild_id run kill @s
execute as @e[type=interaction,tag=GC.Interact] if score @s ec.guild_id = #Search ec.guild_id run kill @s

# Kill all guild NPC members belonging to this guild
execute as @e[type=minecraft:villager,tag=GuildNPC] if score @s ec.guild_id = #Search ec.guild_id run kill @s

# Clear guild_pet flags from all members' companion markers
function evercraft:guild/pets/clear_all_guild_flags

# Kill guild marker
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run kill @s

# Remove guild storage
function evercraft:guild/disband_storage with storage evercraft:guild temp
