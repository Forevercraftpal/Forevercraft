# Guild NPC — Dismiss (remove) an NPC from the guild
# @s = the GuildNPC villager to dismiss

# Remove entry from GuildNPCs[] on guild marker
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute store result storage evercraft:guild_npc temp.slot int 1 run scoreboard players get @s gnpc.slot
function evercraft:guild/npc/remove_entry with storage evercraft:guild_npc temp

# Kill the villager
kill @s
