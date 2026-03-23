# Guild NPC — Per-NPC processing (run as villager at its position)
# Handles: trade refresh check, contribution check, wander containment

# === TRADE REFRESH ===
# Read this NPC's slot to index into GuildNPCs[]
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute store result storage evercraft:guild_npc proc.slot int 1 run scoreboard players get @s gnpc.slot
function evercraft:guild/npc/check_refresh with storage evercraft:guild_npc proc

# === PASSIVE CONTRIBUTION ===
function evercraft:guild/npc/check_contrib with storage evercraft:guild_npc proc

# === WANDER CONTAINMENT ===
function evercraft:guild/npc/wander
