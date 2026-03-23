# Guild NPC — Recruit a profession villager into the guild
# @s = the profession villager being recruited
# Caller already validated: guild membership, zone, no duplicate, profession detected

# Tag as guild NPC
tag @s add GuildNPC

# Make invulnerable, persistent, and stationary (no wandering into caves/water)
data merge entity @s {Invulnerable:1b,PersistenceRequired:1b,NoAI:1b}

# Copy guild ID from the recruiting player (stored as #Search before this call)
scoreboard players operation @s ec.guild_id = #Search ec.guild_id

# Find next available slot
scoreboard players set #gnpc_next_slot ec.temp 0
execute as @e[type=minecraft:villager,tag=GuildNPC] if score @s ec.guild_id = #Search ec.guild_id run execute if score @s gnpc.slot >= #gnpc_next_slot ec.temp run scoreboard players operation #gnpc_next_slot ec.temp = @s gnpc.slot
execute as @e[type=minecraft:villager,tag=GuildNPC] if score @s ec.guild_id = #Search ec.guild_id run execute if score @s gnpc.slot = #gnpc_next_slot ec.temp run scoreboard players add #gnpc_next_slot ec.temp 1
scoreboard players operation @s gnpc.slot = #gnpc_next_slot ec.temp

# Store current gametime for timers
execute store result storage evercraft:guild_npc temp.recruited_at long 1 run time query gametime
execute store result storage evercraft:guild_npc temp.last_refresh long 1 run time query gametime
execute store result storage evercraft:guild_npc temp.last_contrib long 1 run time query gametime

# Build GuildNPCs[] entry
data modify storage evercraft:guild_npc temp.entry set value {}
data modify storage evercraft:guild_npc temp.entry.profession set from storage evercraft:guild_npc temp.profession
execute store result storage evercraft:guild_npc temp.entry.slot int 1 run scoreboard players get #gnpc_next_slot ec.temp
data modify storage evercraft:guild_npc temp.entry.recruited_at set from storage evercraft:guild_npc temp.recruited_at
data modify storage evercraft:guild_npc temp.entry.last_refresh set from storage evercraft:guild_npc temp.last_refresh
data modify storage evercraft:guild_npc temp.entry.refresh_count set value 0
data modify storage evercraft:guild_npc temp.entry.last_contrib set from storage evercraft:guild_npc temp.last_contrib

# Store recruiter's UUID3
execute as @a[scores={ec.guild_in_zone=1},limit=1] store result storage evercraft:guild_npc temp.entry.owner_uuid3 int 1 run scoreboard players get @s companion.id

# Append to GuildNPCs[] on the guild marker
execute positioned 0 -61 0 run data modify entity @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] data.GuildNPCs append from storage evercraft:guild_npc temp.entry

# Teleport villager to guildstone
# Use temp tag so we can reference this specific villager from the guildstone context
tag @s add GuildNPC.new
scoreboard players operation #gnpc_guild_id ec.guild_id = #Search ec.guild_id
execute store result storage evercraft:guild_npc temp.gs_x int 1 run execute as @e[type=marker,tag=ec.guildstone,tag=ec.gs_registered] if score @s ec.guild_id = #gnpc_guild_id ec.guild_id run data get entity @s Pos[0]
execute store result storage evercraft:guild_npc temp.gs_y int 1 run execute as @e[type=marker,tag=ec.guildstone,tag=ec.gs_registered] if score @s ec.guild_id = #gnpc_guild_id ec.guild_id run data get entity @s Pos[1]
execute store result storage evercraft:guild_npc temp.gs_z int 1 run execute as @e[type=marker,tag=ec.guildstone,tag=ec.gs_registered] if score @s ec.guild_id = #gnpc_guild_id ec.guild_id run data get entity @s Pos[2]
function evercraft:guild/npc/tp_to_stone with storage evercraft:guild_npc temp
tag @s remove GuildNPC.new

# Force initial trade setup
function evercraft:professions/fix_offers
