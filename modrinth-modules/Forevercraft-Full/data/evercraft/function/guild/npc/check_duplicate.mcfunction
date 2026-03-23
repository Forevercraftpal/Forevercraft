# Guild NPC — Check if profession already recruited
# Macro: $(profession) = profession string
# Sets #gnpc_dup ec.temp to 1 if duplicate, 0 otherwise

scoreboard players set #gnpc_dup ec.temp 0
$execute positioned 0 -61 0 if data entity @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] data.GuildNPCs[{profession:"$(profession)"}] run scoreboard players set #gnpc_dup ec.temp 1
