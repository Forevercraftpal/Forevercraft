# Guild Companion — Filter GuildPets entry by owner during bulk removal
# Macro: {idx} — index into temp_pets[] to check
# Re-appends if owner_id doesn't match the one being removed

$execute store result score #gc_check_owner companion.id run data get storage evercraft:companions guild.temp_pets[$(idx)].owner_id

# Keep entry if owner doesn't match
$execute unless score #gc_check_owner companion.id = #gc_remove_owner companion.id run data modify storage evercraft:companions guild.keep_entry set from storage evercraft:companions guild.temp_pets[$(idx)]
execute unless score #gc_check_owner companion.id = #gc_remove_owner companion.id positioned 0 -61 0 run data modify entity @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] data.GuildPets append from storage evercraft:companions guild.keep_entry
