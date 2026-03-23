# Guild Kick — Vote expired without reaching majority
# @s = player with expired kick timer

# Announce failure
tellraw @s [{text:"[Guild] ",color:"green"},{text:"The kick vote has expired without reaching majority.",color:"gray"}]

# Clear state
scoreboard players set @s ec.guild_kick_cd 0
scoreboard players set @s ec.guild_kick_target 0
scoreboard players set @s ec.guild_kick_yes 0
scoreboard players set @s ec.guild_kick_no 0
scoreboard players set @s ec.guild_kick_need 0
