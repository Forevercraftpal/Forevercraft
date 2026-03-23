# Guild NPC — Start dismiss (from management menu trigger 11)
# @s = player, at their position

# Must be rank 5+ (Administrator)
execute unless score @s ec.guild_rank matches 5.. run tellraw @s [{text:"[Guild] ",color:"green"},{text:"You need Administrator rank or higher to dismiss NPCs!",color:"red"}]
execute unless score @s ec.guild_rank matches 5.. run return 0

# Find nearest guild NPC within 16 blocks that belongs to this guild
execute unless entity @e[type=villager,tag=ec.guild_npc,distance=..16,limit=1,sort=nearest] run tellraw @s [{text:"[Guild] ",color:"green"},{text:"No Guild NPC found within 16 blocks!",color:"red"}]
execute unless entity @e[type=villager,tag=ec.guild_npc,distance=..16,limit=1,sort=nearest] run return 0

# Verify NPC belongs to this guild
scoreboard players set #gnpc_match ec.temp 0
execute as @e[type=villager,tag=ec.guild_npc,distance=..16,limit=1,sort=nearest] if score @s ec.guild_id = @p ec.guild_id run scoreboard players set #gnpc_match ec.temp 1
execute if score #gnpc_match ec.temp matches 0 run tellraw @s [{text:"[Guild] ",color:"green"},{text:"That NPC does not belong to your guild!",color:"red"}]
execute if score #gnpc_match ec.temp matches 0 run return 0

# Dismiss the NPC
execute as @e[type=villager,tag=ec.guild_npc,distance=..16,limit=1,sort=nearest] if score @s ec.guild_id = @p ec.guild_id run function evercraft:guild/npc/dismiss

# Confirm
tellraw @s [{text:"[Guild] ",color:"green"},{text:"Guild NPC dismissed.",color:"gold"}]
