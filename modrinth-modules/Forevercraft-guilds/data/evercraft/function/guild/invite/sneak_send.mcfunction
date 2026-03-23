# Guild Invite — Shift+right-click with Guild Book to invite
# @s = player who used Guild Book while sneaking
# Uses raycast to find target player within 8 blocks

# Must be in a guild and rank 5+
execute unless score @s ec.guild_id matches 1.. run tellraw @s [{text:"[Guild] ",color:"green"},{text:"You are not in a guild!",color:"red"}]
execute unless score @s ec.guild_id matches 1.. run return 0
execute unless score @s ec.guild_rank matches 5.. run tellraw @s [{text:"[Guild] ",color:"green"},{text:"You need Administrator rank or higher to invite!",color:"red"}]
execute unless score @s ec.guild_rank matches 5.. run return 0

# Tag self as inviter and start raycast
tag @s add ec.guild_inviter
scoreboard players set #guild_ray ec.temp 0
execute at @s anchored eyes positioned ^ ^ ^ run function evercraft:guild/invite/raycast

# Check if target was found
execute unless entity @e[tag=ec.guild_inv_target,limit=1] run tellraw @s [{text:"[Guild] ",color:"green"},{text:"No player found! Look at a player within 8 blocks.",color:"red"}]
execute unless entity @e[tag=ec.guild_inv_target,limit=1] run tag @s remove ec.guild_inviter
execute unless entity @e[tag=ec.guild_inv_target,limit=1] run return 0

# Send invite
function evercraft:guild/invite/send
