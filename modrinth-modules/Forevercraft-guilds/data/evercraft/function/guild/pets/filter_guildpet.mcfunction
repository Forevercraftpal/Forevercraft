# Guild Companion — Filter GuildPets entry during removal
# Macro: {idx} — index into temp_pets[] to check
# Re-appends to GuildPets[] if slot doesn't match removal target

# Read this entry's slot
$execute store result score #gc_check_slot gc.slot run data get storage evercraft:companions guild.temp_pets[$(idx)].slot

# If slot doesn't match the one being removed, keep it
$execute unless score #gc_check_slot gc.slot = #gc_remove_target gc.slot run data modify storage evercraft:companions guild.keep_entry set from storage evercraft:companions guild.temp_pets[$(idx)]
execute unless score #gc_check_slot gc.slot = #gc_remove_target gc.slot positioned 0 -61 0 run data modify entity @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] data.GuildPets append from storage evercraft:companions guild.keep_entry
