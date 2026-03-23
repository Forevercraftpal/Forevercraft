# Guild Invite — Accept invitation
# @s = player accepting (ec.guild_inv = 1)

# Validate: has a pending invite
execute unless score @s ec.guild_inv_from matches 1.. run tellraw @s [{text:"[Guild] ",color:"green"},{text:"You don't have a pending guild invite!",color:"red"}]
execute unless score @s ec.guild_inv_from matches 1.. run return 0

# Validate: not already in a guild
execute if score @s ec.guild_id matches 1.. run tellraw @s [{text:"[Guild] ",color:"green"},{text:"You are already in a guild! Leave first.",color:"red"}]
execute if score @s ec.guild_id matches 1.. run scoreboard players set @s ec.guild_inv_from 0
execute if score @s ec.guild_id matches 1.. run scoreboard players set @s ec.guild_inv_cd 0
execute if score @s ec.guild_id matches 1.. run return 0

# Join the guild
function evercraft:guild/join
