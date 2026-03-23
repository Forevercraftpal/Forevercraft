# Guild Kick — Process a vote (1=yes, 2=no)
# @s = voting player

# Must have an active kick vote
execute unless score @s ec.guild_kick_cd matches 1.. run tellraw @s [{text:"[Guild] ",color:"green"},{text:"No active kick vote!",color:"red"}]
execute unless score @s ec.guild_kick_cd matches 1.. run return 0

# Record vote (1=yes, 2=no) — broadcast to all guild members with active vote
execute if score @s ec.guild_kick matches 1 as @a[scores={ec.guild_kick_cd=1..}] if score @s ec.guild_id = @p ec.guild_id run scoreboard players add @s ec.guild_kick_yes 1
execute if score @s ec.guild_kick matches 2 as @a[scores={ec.guild_kick_cd=1..}] if score @s ec.guild_id = @p ec.guild_id run scoreboard players add @s ec.guild_kick_no 1

# Announce the vote
execute if score @s ec.guild_kick matches 1 run tellraw @a[scores={ec.guild_kick_cd=1..}] [{text:"[Guild] ",color:"green"},{selector:"@s"},{text:" voted ",color:"gray"},{text:"YES",color:"green"}]
execute if score @s ec.guild_kick matches 2 run tellraw @a[scores={ec.guild_kick_cd=1..}] [{text:"[Guild] ",color:"green"},{selector:"@s"},{text:" voted ",color:"gray"},{text:"NO",color:"red"}]

# Check if majority reached
execute if score @s ec.guild_kick_yes >= @s ec.guild_kick_need run function evercraft:guild/kick/execute
