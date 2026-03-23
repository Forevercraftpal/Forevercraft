# Guild Diplomacy — Clean up all vote state after resolution

# Clear vote scoreboards on ALL players
scoreboard players set @a ec.gd_vote_cd 0
scoreboard players set @a ec.gd_vote_yes 0
scoreboard players set @a ec.gd_vote_no 0
scoreboard players set @a ec.gd_vote_need 0
scoreboard players set @a ec.gd_vote_queued 0
scoreboard players set @a ec.gd_vote_total 0
scoreboard players set @a ec.gd_vote_type 0
scoreboard players set @a ec.gd_vote_tgt 0

# Remove approved/rejected tags from all guild markers
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,tag=ec.gd_vote_approved,distance=..2] run tag @s remove ec.gd_vote_approved
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,tag=ec.gd_vote_rejected,distance=..2] run tag @s remove ec.gd_vote_rejected

# Clear global vote state
scoreboard players set #gd_vote_guild_a ec.var 0
scoreboard players set #gd_vote_guild_b ec.var 0
scoreboard players set #gd_vote_type ec.var 0
