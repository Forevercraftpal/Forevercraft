# Guild Kick — Start a kick vote via raycast
# @s = player initiating kick, at their position

# Must be in a guild and rank 5+ (Administrator)
execute unless score @s ec.guild_id matches 1.. run tellraw @s [{text:"[Guild] ",color:"green"},{text:"You are not in a guild!",color:"red"}]
execute unless score @s ec.guild_id matches 1.. run return 0
execute unless score @s ec.guild_rank matches 5.. run tellraw @s [{text:"[Guild] ",color:"green"},{text:"You need Administrator rank or higher to start a kick vote!",color:"red"}]
execute unless score @s ec.guild_rank matches 5.. run return 0

# Raycast to find target player within 8 blocks
tag @s add ec.guild_inviter
scoreboard players set #guild_ray ec.temp 0
execute at @s anchored eyes positioned ^ ^ ^ run function evercraft:guild/invite/raycast

# Check if target was found
execute unless entity @e[tag=ec.guild_inv_target,limit=1] run tellraw @s [{text:"[Guild] ",color:"green"},{text:"No player found! Look at a player within 8 blocks.",color:"red"}]
execute unless entity @e[tag=ec.guild_inv_target,limit=1] run tag @s remove ec.guild_inviter
execute unless entity @e[tag=ec.guild_inv_target,limit=1] run return 0

# Target must be in the same guild
execute store result score #gk_target_guild ec.temp run scoreboard players get @e[tag=ec.guild_inv_target,limit=1] ec.guild_id
execute unless score #gk_target_guild ec.temp = @s ec.guild_id run tellraw @s [{text:"[Guild] ",color:"green"},{text:"That player is not in your guild!",color:"red"}]
execute unless score #gk_target_guild ec.temp = @s ec.guild_id run tag @e[tag=ec.guild_inv_target] remove ec.guild_inv_target
execute unless score #gk_target_guild ec.temp = @s ec.guild_id run tag @s remove ec.guild_inviter
execute unless score #gk_target_guild ec.temp = @s ec.guild_id run return 0

# Cannot kick the guild founder (rank 7)
execute store result score #gk_target_rank ec.temp run scoreboard players get @e[tag=ec.guild_inv_target,limit=1] ec.guild_rank
execute if score #gk_target_rank ec.temp matches 7 run tellraw @s [{text:"[Guild] ",color:"green"},{text:"You cannot kick the guild founder!",color:"red"}]
execute if score #gk_target_rank ec.temp matches 7 run tag @e[tag=ec.guild_inv_target] remove ec.guild_inv_target
execute if score #gk_target_rank ec.temp matches 7 run tag @s remove ec.guild_inviter
execute if score #gk_target_rank ec.temp matches 7 run return 0

# Count online guild members for majority calculation
scoreboard players set #gk_online ec.temp 0
execute as @a[scores={ec.guild_id=1..}] if score @s ec.guild_id = @p[tag=ec.guild_inviter] ec.guild_id run scoreboard players add #gk_online ec.temp 1
# Votes needed = ceil(online / 2) — store half, round up
scoreboard players operation #gk_votes_needed ec.temp = #gk_online ec.temp
scoreboard players add #gk_votes_needed ec.temp 1
scoreboard players operation #gk_votes_needed ec.temp /= #2 ec.const

# Store target companion.id for kick/execute matching
execute store result score #gk_target_id ec.temp run scoreboard players get @e[tag=ec.guild_inv_target,limit=1] companion.id

# Initialize vote state for all online guild members
execute as @a[scores={ec.guild_id=1..}] if score @s ec.guild_id = @p[tag=ec.guild_inviter] ec.guild_id run scoreboard players set @s ec.guild_kick_cd 1200
execute as @a[scores={ec.guild_id=1..}] if score @s ec.guild_id = @p[tag=ec.guild_inviter] ec.guild_id run scoreboard players operation @s ec.guild_kick_target = #gk_target_id ec.temp
execute as @a[scores={ec.guild_id=1..}] if score @s ec.guild_id = @p[tag=ec.guild_inviter] ec.guild_id run scoreboard players set @s ec.guild_kick_yes 0
execute as @a[scores={ec.guild_id=1..}] if score @s ec.guild_id = @p[tag=ec.guild_inviter] ec.guild_id run scoreboard players set @s ec.guild_kick_no 0
execute as @a[scores={ec.guild_id=1..}] if score @s ec.guild_id = @p[tag=ec.guild_inviter] ec.guild_id run scoreboard players operation @s ec.guild_kick_need = #gk_votes_needed ec.temp
execute as @a[scores={ec.guild_id=1..}] if score @s ec.guild_id = @p[tag=ec.guild_inviter] ec.guild_id run scoreboard players enable @s ec.guild_kick

# Store votes_needed to storage for macro announce
execute store result storage evercraft:guild temp.votes_needed int 1 run scoreboard players get #gk_votes_needed ec.temp

# Broadcast the vote
function evercraft:guild/kick/announce with storage evercraft:guild temp

# Cleanup tags
tag @e[tag=ec.guild_inv_target] remove ec.guild_inv_target
tag @s remove ec.guild_inviter
