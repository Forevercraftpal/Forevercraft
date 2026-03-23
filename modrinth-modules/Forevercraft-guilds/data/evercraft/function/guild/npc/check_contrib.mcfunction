# Guild NPC — Check if contribution is due
# Macro: $(slot) = NPC slot index
# @s = the GuildNPC villager
# #gnpc_now ec.temp = current gametime

# Read last_contrib from guild marker
$execute positioned 0 -61 0 store result score #gnpc_last_contrib ec.temp run data get entity @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] data.GuildNPCs[$(slot)].last_contrib

# Compute elapsed = now - last_contrib
scoreboard players operation #gnpc_contrib_elapsed ec.temp = #gnpc_now ec.temp
scoreboard players operation #gnpc_contrib_elapsed ec.temp -= #gnpc_last_contrib ec.temp

# If elapsed >= 12000 (10 min), contribute
execute unless score #gnpc_contrib_elapsed ec.temp matches 12000.. run return 0

# Add guild XP (need a guilded player context for add_guild_xp_direct)
# Use the NPC's owner or any online guilded player with matching guild ID
scoreboard players set #guild_xp_add ec.temp 3
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run function evercraft:guild/contribution/apply_guild_xp

# Update last_contrib on guild marker
$execute positioned 0 -61 0 store result entity @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] data.GuildNPCs[$(slot)].last_contrib long 1 run time query gametime
