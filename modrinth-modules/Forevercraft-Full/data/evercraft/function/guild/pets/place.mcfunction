# ============================================================
# Guild Companion — Place a companion at the guild stone
# Run as: player
# Macro: {pets_slot} — index into Pets[] array
# Requires: player in a guild with ec.guild_in_zone=1, global guild pet count < 25, personal < 3
# ============================================================

# Validate: player is in a guild
execute unless score @s ec.guild_id matches 1.. run return run tellraw @s [{text:"[Guild] ",color:"green"},{text:"You must be in a guild to place companions.",color:"red"}]

# Validate: player is in guild zone
execute unless score @s ec.guild_in_zone matches 1 run return run tellraw @s [{text:"[Guild] ",color:"green"},{text:"You must be in the guild zone to place companions.",color:"red"}]

# Validate: under the 25-companion cap (read from guild marker)
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute positioned 0 -61 0 store result score #gc_count ec.temp run scoreboard players get @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] ec.gs_pet_count
execute if score #gc_count ec.temp matches 25.. run return run tellraw @s [{text:"[Guild] ",color:"green"},{text:"The guild can only have up to 25 companions.",color:"red"}]

# Validate: player hasn't exceeded their personal 3-companion limit
execute if score @s ec.gs_my_pets matches 3.. run return run tellraw @s [{text:"[Guild] ",color:"green"},{text:"You can only place up to 3 companions at the guild.",color:"red"}]

# Validate: companion is not already placed at guild
$execute if data entity @e[type=marker, tag=companion.marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[$(pets_slot)].components."minecraft:custom_data".guild_pet run return run tellraw @s [{text:"[Guild] ",color:"green"},{text:"This companion is already placed at the guild.",color:"red"}]

# Validate: companion is not already placed at home
$execute if data entity @e[type=marker, tag=companion.marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[$(pets_slot)].components."minecraft:custom_data".home run return run tellraw @s [{text:"[Guild] ",color:"green"},{text:"This companion is already placed at home. Retrieve it first.",color:"red"}]

# Find the next available guild slot (0-24)
scoreboard players set #gc_next_slot gc.slot 0
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute as @e[type=chicken, tag=GuildCompanion] if score @s ec.guild_id = #Search ec.guild_id run execute if score @s gc.slot >= #gc_next_slot gc.slot run scoreboard players operation #gc_next_slot gc.slot = @s gc.slot
execute as @e[type=chicken, tag=GuildCompanion] if score @s ec.guild_id = #Search ec.guild_id run execute if score @s gc.slot = #gc_next_slot gc.slot run scoreboard players add #gc_next_slot gc.slot 1

# Copy pet item data to storage for summon function
scoreboard players operation #Search companion.id = @s companion.id
$data modify storage evercraft:companions guild.item set from entity @e[type=marker, tag=companion.marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[$(pets_slot)]
execute store result storage evercraft:companions guild.slot int 1 run scoreboard players get #gc_next_slot gc.slot

# Store gametime for passive RP tracking
execute store result storage evercraft:companions guild.placed_at long 1 run time query gametime
execute store result storage evercraft:companions guild.last_rp_tick long 1 run time query gametime

# Build GuildPets[] entry in storage
data modify storage evercraft:companions guild.entry set value {}
data modify storage evercraft:companions guild.entry.item set from storage evercraft:companions guild.item
execute store result storage evercraft:companions guild.entry.slot int 1 run scoreboard players get #gc_next_slot gc.slot
data modify storage evercraft:companions guild.entry.placed_at set from storage evercraft:companions guild.placed_at
data modify storage evercraft:companions guild.entry.last_rp_tick set from storage evercraft:companions guild.last_rp_tick
execute store result storage evercraft:companions guild.entry.owner_id int 1 run scoreboard players get @s companion.id

# Append to GuildPets[] on the guild marker
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute positioned 0 -61 0 run data modify entity @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] data.GuildPets append from storage evercraft:companions guild.entry

# Mark the Pets[] entry with guild_pet:1b flag
scoreboard players operation #Search companion.id = @s companion.id
$data modify entity @e[type=marker, tag=companion.marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[$(pets_slot)].components."minecraft:custom_data".guild_pet set value 1b

# Find the guildstone marker and summon the companion there
scoreboard players operation #gc_owner_id companion.id = @s companion.id
scoreboard players operation #gc_guild_id ec.guild_id = @s ec.guild_id
execute as @e[type=marker, tag=ec.guildstone, tag=ec.gs_registered] if score @s ec.guild_id = #gc_guild_id ec.guild_id at @s run function evercraft:guild/pets/summon

# Increment guild pet count on guild marker
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run scoreboard players add @s ec.gs_pet_count 1

# Increment player's personal guild pet count
scoreboard players add @s ec.gs_my_pets 1

# If any guild members in zone, recompute abilities for them
execute as @a[scores={ec.guild_in_zone=1}] if score @s ec.guild_id = #gc_guild_id ec.guild_id run function evercraft:guild/pets/abilities/apply_all_zone

# Notify player
tellraw @s [{text:"[Guild] ",color:"green"},{text:"Your companion has been placed at the guild!",color:"green"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.5
