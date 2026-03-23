# Guild NPC — Check if trades need refreshing
# Macro: $(slot) = NPC slot index
# @s = the GuildNPC villager
# #gnpc_now ec.temp = current gametime
# #Search ec.guild_id = guild ID

# Read last_refresh from guild marker
$execute positioned 0 -61 0 store result score #gnpc_last_refresh ec.temp run data get entity @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] data.GuildNPCs[$(slot)].last_refresh

# Read refresh_count
$execute positioned 0 -61 0 store result score #gnpc_refresh_ct ec.temp run data get entity @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] data.GuildNPCs[$(slot)].refresh_count

# Cap at 5 refreshes per day
execute if score #gnpc_refresh_ct ec.temp matches 5.. run return 0

# Compute elapsed = now - last_refresh
scoreboard players operation #gnpc_elapsed ec.temp = #gnpc_now ec.temp
scoreboard players operation #gnpc_elapsed ec.temp -= #gnpc_last_refresh ec.temp

# If elapsed >= 14400 (refresh interval), do refresh
execute unless score #gnpc_elapsed ec.temp matches 14400.. run return 0

# Do the refresh
function evercraft:guild/npc/do_refresh with storage evercraft:guild_npc proc
