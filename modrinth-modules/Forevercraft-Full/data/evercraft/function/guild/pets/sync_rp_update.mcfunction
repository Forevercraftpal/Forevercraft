# Guild Companion — Update GuildPets[] entry with synced item data
# Requires: storage guild.sync_item, guild.sync_slot, #Search ec.guild_id

# Read GuildPets from marker
execute positioned 0 -61 0 run data modify storage evercraft:companions guild.sync_pets set from entity @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] data.GuildPets

execute store result score #gc_sync_target gc.slot run data get storage evercraft:companions guild.sync_slot

# Iterate to find matching slot and update its item
execute if data storage evercraft:companions guild.sync_pets[0] run function evercraft:guild/pets/sync_rp_entry {idx:0}
execute if data storage evercraft:companions guild.sync_pets[1] run function evercraft:guild/pets/sync_rp_entry {idx:1}
execute if data storage evercraft:companions guild.sync_pets[2] run function evercraft:guild/pets/sync_rp_entry {idx:2}
execute if data storage evercraft:companions guild.sync_pets[3] run function evercraft:guild/pets/sync_rp_entry {idx:3}
execute if data storage evercraft:companions guild.sync_pets[4] run function evercraft:guild/pets/sync_rp_entry {idx:4}
execute if data storage evercraft:companions guild.sync_pets[5] run function evercraft:guild/pets/sync_rp_entry {idx:5}
execute if data storage evercraft:companions guild.sync_pets[6] run function evercraft:guild/pets/sync_rp_entry {idx:6}
execute if data storage evercraft:companions guild.sync_pets[7] run function evercraft:guild/pets/sync_rp_entry {idx:7}
execute if data storage evercraft:companions guild.sync_pets[8] run function evercraft:guild/pets/sync_rp_entry {idx:8}
execute if data storage evercraft:companions guild.sync_pets[9] run function evercraft:guild/pets/sync_rp_entry {idx:9}
execute if data storage evercraft:companions guild.sync_pets[10] run function evercraft:guild/pets/sync_rp_entry {idx:10}
execute if data storage evercraft:companions guild.sync_pets[11] run function evercraft:guild/pets/sync_rp_entry {idx:11}
execute if data storage evercraft:companions guild.sync_pets[12] run function evercraft:guild/pets/sync_rp_entry {idx:12}
execute if data storage evercraft:companions guild.sync_pets[13] run function evercraft:guild/pets/sync_rp_entry {idx:13}
execute if data storage evercraft:companions guild.sync_pets[14] run function evercraft:guild/pets/sync_rp_entry {idx:14}
execute if data storage evercraft:companions guild.sync_pets[15] run function evercraft:guild/pets/sync_rp_entry {idx:15}
execute if data storage evercraft:companions guild.sync_pets[16] run function evercraft:guild/pets/sync_rp_entry {idx:16}
execute if data storage evercraft:companions guild.sync_pets[17] run function evercraft:guild/pets/sync_rp_entry {idx:17}
execute if data storage evercraft:companions guild.sync_pets[18] run function evercraft:guild/pets/sync_rp_entry {idx:18}
execute if data storage evercraft:companions guild.sync_pets[19] run function evercraft:guild/pets/sync_rp_entry {idx:19}
execute if data storage evercraft:companions guild.sync_pets[20] run function evercraft:guild/pets/sync_rp_entry {idx:20}
execute if data storage evercraft:companions guild.sync_pets[21] run function evercraft:guild/pets/sync_rp_entry {idx:21}
execute if data storage evercraft:companions guild.sync_pets[22] run function evercraft:guild/pets/sync_rp_entry {idx:22}
execute if data storage evercraft:companions guild.sync_pets[23] run function evercraft:guild/pets/sync_rp_entry {idx:23}
execute if data storage evercraft:companions guild.sync_pets[24] run function evercraft:guild/pets/sync_rp_entry {idx:24}
