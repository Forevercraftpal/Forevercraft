# Guild Contribution — Check if player should be promoted
# @s = player with updated ec.guild_contrib

# Store old rank for comparison
scoreboard players operation #guild_old_rank ec.temp = @s ec.guild_rank

# Calculate new rank based on contribution thresholds
scoreboard players set #guild_new_rank ec.temp 1
execute if score @s ec.guild_contrib >= #guild_rank_2 ec.const run scoreboard players set #guild_new_rank ec.temp 2
execute if score @s ec.guild_contrib >= #guild_rank_3 ec.const run scoreboard players set #guild_new_rank ec.temp 3
execute if score @s ec.guild_contrib >= #guild_rank_4 ec.const run scoreboard players set #guild_new_rank ec.temp 4
execute if score @s ec.guild_contrib >= #guild_rank_5 ec.const run scoreboard players set #guild_new_rank ec.temp 5
execute if score @s ec.guild_contrib >= #guild_rank_6 ec.const run scoreboard players set #guild_new_rank ec.temp 6
execute if score @s ec.guild_contrib >= #guild_rank_7 ec.const run scoreboard players set #guild_new_rank ec.temp 7

# Only promote, never demote (rank can't go down)
# And creator stays at rank 7 regardless
execute if score #guild_new_rank ec.temp > @s ec.guild_rank run scoreboard players operation @s ec.guild_rank = #guild_new_rank ec.temp
execute if score #guild_new_rank ec.temp > #guild_old_rank ec.temp run function evercraft:guild/contribution/announce_promote
