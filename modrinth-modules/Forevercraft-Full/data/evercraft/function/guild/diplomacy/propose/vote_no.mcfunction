# Guild Diplomacy — Process a NO vote
# @s = player who voted no (trigger ec.gd_diplo = 5)

# Must have an active vote
execute unless score @s ec.gd_vote_cd matches 1.. run return 0

# Save voter's guild ID for matching
scoreboard players operation #gd_voter_guild ec.temp = @s ec.guild_id

# Increment no counter on ALL same-guild online members with active vote
execute as @a[scores={ec.gd_vote_cd=1..}] if score @s ec.guild_id = #gd_voter_guild ec.temp run scoreboard players add @s ec.gd_vote_no 1
execute as @a[scores={ec.gd_vote_cd=1..}] if score @s ec.guild_id = #gd_voter_guild ec.temp run scoreboard players add @s ec.gd_vote_total 1

# Prevent double voting
scoreboard players set @s ec.gd_vote_cd -1

# Announce vote to guild
tellraw @a[scores={ec.gd_vote_cd=1..}] [{text:"[Forevercraft] ",color:"gold"},{selector:"@s"},{text:" voted ",color:"gray"},{text:"NO",color:"red",bold:true}]

# Check if vote resolves
function evercraft:guild/diplomacy/propose/check_resolve
