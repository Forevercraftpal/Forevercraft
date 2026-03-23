# Guild Invite — Decline or timeout
# @s = player declining/timing out

# Only process if there's a pending invite
execute unless score @s ec.guild_inv_from matches 1.. run return 0

# Clear invite data
scoreboard players set @s ec.guild_inv_from 0
scoreboard players set @s ec.guild_inv_cd 0

# Notify
tellraw @s [{text:"[Guild] ",color:"green"},{text:"Guild invite declined.",color:"gray"}]
