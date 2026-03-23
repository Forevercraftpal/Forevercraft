# Guild Diplomacy — A guild rejected the proposal
# Fail the entire proposal immediately (both guilds must agree)

# Determine which guild rejected
scoreboard players set #gd_rejected_guild ec.temp 0
execute as @a[scores={ec.gd_vote_cd=1..},limit=1] store result score #gd_rejected_guild ec.temp run scoreboard players get @s ec.guild_id

# Announce rejection to this guild
execute as @a if score @s ec.guild_id = #gd_rejected_guild ec.temp run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Your guild voted NO. Proposal rejected.",color:"red"}]

# Announce to the OTHER guild
execute as @a[scores={ec.gd_vote_cd=1..}] unless score @s ec.guild_id = #gd_rejected_guild ec.temp run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"The other guild rejected the proposal.",color:"red"}]

# Full cleanup
function evercraft:guild/diplomacy/propose/cleanup
