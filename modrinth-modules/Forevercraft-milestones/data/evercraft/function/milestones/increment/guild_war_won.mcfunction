# Realm Milestone Increment — Guild war won
# Called from event/end after winner is determined
# Track per-guild wins on the winning guild's marker, then update global max
# #gd_winner_guild ec.var must be set before calling

# Increment wins on the winning guild marker
scoreboard players set #Search ec.guild_id 0
scoreboard players operation #Search ec.guild_id = #gd_winner_guild ec.var
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run scoreboard players add @s ec.gd_wins 1
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] store result score #rm_temp ec.var run scoreboard players get @s ec.gd_wins

# Update global max wins if this guild has more
execute if score #rm_temp ec.var > #rm_guild_max_wins ec.var run scoreboard players operation #rm_guild_max_wins ec.var = #rm_temp ec.var
