# Guild Companion — Sync RP to a specific GuildPets[] entry if slot matches
# Macro: {idx} — index into sync_pets[]

$execute store result score #gc_check_slot gc.slot run data get storage evercraft:companions guild.sync_pets[$(idx)].slot
$execute if score #gc_check_slot gc.slot = #gc_sync_target gc.slot positioned 0 -61 0 run data modify entity @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] data.GuildPets[$(idx)].item set from storage evercraft:companions guild.sync_item
