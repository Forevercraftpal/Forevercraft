# Guild NPC — Wander containment
# @s = GuildNPC villager, at its position
# If >8 blocks from guildstone, TP back

# Check if our guildstone is within range (simple distance check)
# Guild NPCs should always be near their guildstone
execute unless entity @e[type=marker,tag=ec.guildstone,tag=ec.gs_registered,distance=..8] run tag @s add GuildNPC.wandered

# If wandered, find guildstone and TP back
execute if entity @s[tag=GuildNPC.wandered] as @e[type=marker,tag=ec.guildstone,tag=ec.gs_registered] if score @s ec.guild_id = #gnpc_guild_id ec.guild_id at @s run tp @e[type=minecraft:villager,tag=GuildNPC.wandered,limit=1,sort=nearest] ~ ~ ~
tag @s remove GuildNPC.wandered
