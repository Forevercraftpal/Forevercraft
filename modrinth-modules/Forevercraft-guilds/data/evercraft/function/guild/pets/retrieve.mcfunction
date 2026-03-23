# ============================================================
# Guild Companion — Retrieve a companion from the guild
# Run as: player
# Requires: #gc_retrieve_slot gc.slot = slot of companion to retrieve
#           #gc_retrieve_guild ec.guild_id = guild ID
# ============================================================

# Find the GC.Head entity with matching slot and guild and sync RP before removing
scoreboard players operation #Search ec.guild_id = #gc_retrieve_guild ec.guild_id
execute as @e[type=item_display, tag=GC.Head] if score @s ec.guild_id = #Search ec.guild_id if score @s gc.slot = #gc_retrieve_slot gc.slot run function evercraft:guild/pets/sync_rp

# Kill all entities for this slot (chicken + head + interaction)
execute as @e[type=chicken, tag=GuildCompanion] if score @s ec.guild_id = #Search ec.guild_id if score @s gc.slot = #gc_retrieve_slot gc.slot run kill @s
execute as @e[type=item_display, tag=GC.Head] if score @s ec.guild_id = #Search ec.guild_id if score @s gc.slot = #gc_retrieve_slot gc.slot run kill @s
execute as @e[type=interaction, tag=GC.Interact] if score @s ec.guild_id = #Search ec.guild_id if score @s gc.slot = #gc_retrieve_slot gc.slot run kill @s

# Remove GuildPets[] entry from guild marker
execute store result storage evercraft:companions guild.remove_slot int 1 run scoreboard players get #gc_retrieve_slot gc.slot
function evercraft:guild/pets/remove_guildpet_entry

# Clear guild_pet:1b from Pets[] on the companion marker
scoreboard players operation #Search companion.id = @s companion.id
function evercraft:guild/pets/clear_guild_flag

# Decrement guild pet count on guild marker
scoreboard players operation #Search ec.guild_id = #gc_retrieve_guild ec.guild_id
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run scoreboard players remove @s ec.gs_pet_count 1

# Decrement player's personal guild pet count
scoreboard players remove @s ec.gs_my_pets 1
execute if score @s ec.gs_my_pets matches ..-1 run scoreboard players set @s ec.gs_my_pets 0

# Recompute abilities for all guild members in zone
execute as @a[scores={ec.guild_in_zone=1}] if score @s ec.guild_id = #gc_retrieve_guild ec.guild_id run function evercraft:guild/pets/abilities/apply_all_zone

tellraw @s [{text:"[Guild] ",color:"green"},{text:"Your companion has been retrieved from the guild.",color:"green"}]
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.2
