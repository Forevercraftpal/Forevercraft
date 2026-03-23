# Guild Diplomacy — Check if voter's guild's vote has resolved
# Called after vote_yes/vote_no
# #gd_voter_guild ec.temp = guild ID of the voter

# Get this guild's current vote state from any active voter in the same guild
# (all members share the same yes/no/total/need values)
execute as @a[scores={ec.gd_vote_cd=1..},limit=1] if score @s ec.guild_id = #gd_voter_guild ec.temp store result score #gd_cv_yes ec.temp run scoreboard players get @s ec.gd_vote_yes
execute as @a[scores={ec.gd_vote_cd=1..},limit=1] if score @s ec.guild_id = #gd_voter_guild ec.temp store result score #gd_cv_no ec.temp run scoreboard players get @s ec.gd_vote_no
execute as @a[scores={ec.gd_vote_cd=1..},limit=1] if score @s ec.guild_id = #gd_voter_guild ec.temp store result score #gd_cv_need ec.temp run scoreboard players get @s ec.gd_vote_need
execute as @a[scores={ec.gd_vote_cd=1..},limit=1] if score @s ec.guild_id = #gd_voter_guild ec.temp store result score #gd_cv_queued ec.temp run scoreboard players get @s ec.gd_vote_queued
execute as @a[scores={ec.gd_vote_cd=1..},limit=1] if score @s ec.guild_id = #gd_voter_guild ec.temp store result score #gd_cv_total ec.temp run scoreboard players get @s ec.gd_vote_total

# === NON-QUEUED: Check if yes or no reached majority ===
execute if score #gd_cv_queued ec.temp matches 0 if score #gd_cv_yes ec.temp >= #gd_cv_need ec.temp run function evercraft:guild/diplomacy/propose/guild_approved
execute if score #gd_cv_queued ec.temp matches 0 if score #gd_cv_no ec.temp >= #gd_cv_need ec.temp run function evercraft:guild/diplomacy/propose/guild_rejected

# === QUEUED: Check if 60% of roster has voted (total >= need) ===
execute if score #gd_cv_queued ec.temp matches 1 if score #gd_cv_total ec.temp >= #gd_cv_need ec.temp run function evercraft:guild/diplomacy/propose/queued_resolve
