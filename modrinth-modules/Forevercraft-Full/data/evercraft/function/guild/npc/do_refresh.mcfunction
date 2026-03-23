# Guild NPC — Execute trade refresh
# Macro: $(slot) = NPC slot index
# @s = the GuildNPC villager

# Refresh trades using existing profession dispatch
tag @s remove ec.trades_set
function evercraft:professions/fix_offers

# Update last_refresh on guild marker
$execute positioned 0 -61 0 store result entity @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] data.GuildNPCs[$(slot)].last_refresh long 1 run time query gametime

# Increment refresh_count
scoreboard players add #gnpc_refresh_ct ec.temp 1
$execute positioned 0 -61 0 store result entity @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] data.GuildNPCs[$(slot)].refresh_count int 1 run scoreboard players get #gnpc_refresh_ct ec.temp
