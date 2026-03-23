# Guild Companion — Remove ALL GuildPets[] entries owned by a specific player
# Requires: storage evercraft:companions guild.remove_owner = owner's companion.id
#           #Search ec.guild_id = guild ID

# Copy, clear, re-add entries not matching the owner
execute positioned 0 -61 0 run data modify storage evercraft:companions guild.temp_pets set from entity @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] data.GuildPets
execute positioned 0 -61 0 run data modify entity @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] data.GuildPets set value []

execute store result score #gc_remove_owner companion.id run data get storage evercraft:companions guild.remove_owner

# Filter each entry — keep if owner_id doesn't match
execute if data storage evercraft:companions guild.temp_pets[0] run function evercraft:guild/pets/filter_by_owner {idx:0}
execute if data storage evercraft:companions guild.temp_pets[1] run function evercraft:guild/pets/filter_by_owner {idx:1}
execute if data storage evercraft:companions guild.temp_pets[2] run function evercraft:guild/pets/filter_by_owner {idx:2}
execute if data storage evercraft:companions guild.temp_pets[3] run function evercraft:guild/pets/filter_by_owner {idx:3}
execute if data storage evercraft:companions guild.temp_pets[4] run function evercraft:guild/pets/filter_by_owner {idx:4}
execute if data storage evercraft:companions guild.temp_pets[5] run function evercraft:guild/pets/filter_by_owner {idx:5}
execute if data storage evercraft:companions guild.temp_pets[6] run function evercraft:guild/pets/filter_by_owner {idx:6}
execute if data storage evercraft:companions guild.temp_pets[7] run function evercraft:guild/pets/filter_by_owner {idx:7}
execute if data storage evercraft:companions guild.temp_pets[8] run function evercraft:guild/pets/filter_by_owner {idx:8}
execute if data storage evercraft:companions guild.temp_pets[9] run function evercraft:guild/pets/filter_by_owner {idx:9}
execute if data storage evercraft:companions guild.temp_pets[10] run function evercraft:guild/pets/filter_by_owner {idx:10}
execute if data storage evercraft:companions guild.temp_pets[11] run function evercraft:guild/pets/filter_by_owner {idx:11}
execute if data storage evercraft:companions guild.temp_pets[12] run function evercraft:guild/pets/filter_by_owner {idx:12}
execute if data storage evercraft:companions guild.temp_pets[13] run function evercraft:guild/pets/filter_by_owner {idx:13}
execute if data storage evercraft:companions guild.temp_pets[14] run function evercraft:guild/pets/filter_by_owner {idx:14}
execute if data storage evercraft:companions guild.temp_pets[15] run function evercraft:guild/pets/filter_by_owner {idx:15}
execute if data storage evercraft:companions guild.temp_pets[16] run function evercraft:guild/pets/filter_by_owner {idx:16}
execute if data storage evercraft:companions guild.temp_pets[17] run function evercraft:guild/pets/filter_by_owner {idx:17}
execute if data storage evercraft:companions guild.temp_pets[18] run function evercraft:guild/pets/filter_by_owner {idx:18}
execute if data storage evercraft:companions guild.temp_pets[19] run function evercraft:guild/pets/filter_by_owner {idx:19}
execute if data storage evercraft:companions guild.temp_pets[20] run function evercraft:guild/pets/filter_by_owner {idx:20}
execute if data storage evercraft:companions guild.temp_pets[21] run function evercraft:guild/pets/filter_by_owner {idx:21}
execute if data storage evercraft:companions guild.temp_pets[22] run function evercraft:guild/pets/filter_by_owner {idx:22}
execute if data storage evercraft:companions guild.temp_pets[23] run function evercraft:guild/pets/filter_by_owner {idx:23}
execute if data storage evercraft:companions guild.temp_pets[24] run function evercraft:guild/pets/filter_by_owner {idx:24}
