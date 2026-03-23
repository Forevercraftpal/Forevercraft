# Guild NPC — Reset refresh count on marker (macro)
# $(slot) = NPC slot index

$execute positioned 0 -61 0 run data modify entity @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] data.GuildNPCs[$(slot)].refresh_count set value 0
