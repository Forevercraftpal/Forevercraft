# Guild NPC — Remove GuildNPCs[] entry from guild marker
# Macro: $(slot) = NPC slot index
# #Search ec.guild_id = guild ID

$execute positioned 0 -61 0 run data remove entity @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] data.GuildNPCs[{slot:$(slot)}]
