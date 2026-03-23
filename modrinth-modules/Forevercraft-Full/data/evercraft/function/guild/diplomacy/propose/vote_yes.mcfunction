# Guild Diplomacy — Process a YES vote
# @s = player who voted yes (trigger ec.gd_diplo = 4)

# Must have an active vote
execute unless score @s ec.gd_vote_cd matches 1.. run return 0

# Save voter's guild ID for matching
scoreboard players operation #gd_voter_guild ec.temp = @s ec.guild_id

# Increment yes counter on ALL same-guild online members with active vote
execute as @a[scores={ec.gd_vote_cd=1..}] if score @s ec.guild_id = #gd_voter_guild ec.temp run scoreboard players add @s ec.gd_vote_yes 1
execute as @a[scores={ec.gd_vote_cd=1..}] if score @s ec.guild_id = #gd_voter_guild ec.temp run scoreboard players add @s ec.gd_vote_total 1

# Prevent double voting
scoreboard players set @s ec.gd_vote_cd -1

# Announce vote to guild
tellraw @a[scores={ec.gd_vote_cd=1..}] [{text:"[Forevercraft] ",color:"gold"},{selector:"@s"},{text:" voted ",color:"gray"},{text:"YES",color:"green",bold:true}]

# Check if vote resolves
function evercraft:guild/diplomacy/propose/check_resolve
