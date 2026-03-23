# Guild Invite — Send invite to target player
# @s = inviting player, target found via raycast or GUI
# Requires rank 5+ (Administrator)

# Validate: must be in a guild
execute unless score @s ec.guild_id matches 1.. run tellraw @s [{text:"[Guild] ",color:"green"},{text:"You are not in a guild!",color:"red"}]
execute unless score @s ec.guild_id matches 1.. run return 0

# Validate: must be rank 5+ (Administrator, Dedicated, Valorous)
execute unless score @s ec.guild_rank matches 5.. run tellraw @s [{text:"[Guild] ",color:"green"},{text:"You need Administrator rank or higher to invite!",color:"red"}]
execute unless score @s ec.guild_rank matches 5.. run return 0

# Target found via raycast — tagged ec.guild_inv_target
# Check target is not already in a guild
execute if score @e[tag=ec.guild_inv_target,limit=1] ec.guild_id matches 1.. run tellraw @s [{text:"[Guild] ",color:"green"},{text:"That player is already in a guild!",color:"red"}]
execute if score @e[tag=ec.guild_inv_target,limit=1] ec.guild_id matches 1.. run tag @e[tag=ec.guild_inv_target] remove ec.guild_inv_target
execute if score @e[tag=ec.guild_inv_target,limit=1] ec.guild_id matches 1.. run return 0

# Check target doesn't have a pending invite
execute if score @e[tag=ec.guild_inv_target,limit=1] ec.guild_inv_from matches 1.. run tellraw @s [{text:"[Guild] ",color:"green"},{text:"That player already has a pending guild invite!",color:"red"}]
execute if score @e[tag=ec.guild_inv_target,limit=1] ec.guild_inv_from matches 1.. run tag @e[tag=ec.guild_inv_target] remove ec.guild_inv_target
execute if score @e[tag=ec.guild_inv_target,limit=1] ec.guild_inv_from matches 1.. run return 0

# Send the invite
execute as @e[tag=ec.guild_inv_target,limit=1] run scoreboard players operation @s ec.guild_inv_from = @p[tag=ec.guild_inviter] ec.guild_id
execute as @e[tag=ec.guild_inv_target,limit=1] run scoreboard players set @s ec.guild_inv_cd 1200

# Get guild name for tellraw
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run data modify storage evercraft:guild temp.guild_name set from entity @s data.name

# Notify the target
function evercraft:guild/invite/notify_target with storage evercraft:guild temp

# Notify the sender
tellraw @s [{text:"[Guild] ",color:"green"},{text:"Invite sent!",color:"green"}]

# Cleanup tags
tag @s remove ec.guild_inviter
tag @e[tag=ec.guild_inv_target] remove ec.guild_inv_target
