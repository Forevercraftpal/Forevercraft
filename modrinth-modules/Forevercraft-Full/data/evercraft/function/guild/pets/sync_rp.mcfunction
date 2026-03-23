# Guild Companion — Sync RP from entity back to guild marker GuildPets[]
# Run as: GC.Head item_display entity
# Updates the matching GuildPets[].item entry on the guild marker

# Store the updated item data
data modify storage evercraft:companions guild.sync_item set from entity @s item

# Find matching slot in GuildPets[] and update
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute store result storage evercraft:companions guild.sync_slot int 1 run scoreboard players get @s gc.slot

# Update the entry — iterate to find matching slot
function evercraft:guild/pets/sync_rp_update
