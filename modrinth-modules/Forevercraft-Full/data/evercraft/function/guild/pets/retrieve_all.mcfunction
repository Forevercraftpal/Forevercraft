# ============================================================
# Guild Companion — Retrieve ALL of a player's guild companions
# Run as: player leaving/kicked from guild
# Bulk kills all GuildCompanion entities owned by this player
# ============================================================

# Store guild ID before it's cleared
scoreboard players operation #gc_retrieve_guild ec.guild_id = @s ec.guild_id
scoreboard players operation #Search ec.guild_id = @s ec.guild_id

# Kill all guild companion entities belonging to this player
scoreboard players operation #Search companion.id = @s companion.id
execute as @e[type=chicken, tag=GuildCompanion] if score @s ec.guild_id = #gc_retrieve_guild ec.guild_id if score @s companion.id = #Search companion.id run kill @s
execute as @e[type=item_display, tag=GC.Head] if score @s ec.guild_id = #gc_retrieve_guild ec.guild_id if score @s companion.id = #Search companion.id run kill @s
execute as @e[type=interaction, tag=GC.Interact] if score @s ec.guild_id = #gc_retrieve_guild ec.guild_id if score @s companion.id = #Search companion.id run kill @s

# Remove all GuildPets[] entries owned by this player from guild marker
# Rebuild the array excluding entries with matching owner_id
execute store result storage evercraft:companions guild.remove_owner int 1 run scoreboard players get @s companion.id
function evercraft:guild/pets/remove_all_by_owner

# Clear guild_pet:1b from ALL Pets[] entries on the companion marker
scoreboard players operation #Search companion.id = @s companion.id
function evercraft:guild/pets/clear_all_guild_flags

# Update counts
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run scoreboard players operation @s ec.gs_pet_count -= @s ec.gs_my_pets
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] if score @s ec.gs_pet_count matches ..-1 run scoreboard players set @s ec.gs_pet_count 0
scoreboard players set @s ec.gs_my_pets 0

# Recompute abilities for remaining zone members
execute as @a[scores={ec.guild_in_zone=1}] if score @s ec.guild_id = #gc_retrieve_guild ec.guild_id run function evercraft:guild/pets/abilities/apply_all_zone
