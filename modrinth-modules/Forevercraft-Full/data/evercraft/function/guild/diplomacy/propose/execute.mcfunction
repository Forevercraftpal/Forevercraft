# Guild Diplomacy — Execute approved proposal
# Both guilds voted yes — finalize based on vote type

# Get guild names for announcements
scoreboard players operation #Search ec.guild_id = #gd_vote_guild_a ec.var
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run data modify storage evercraft:guild temp.guild_a_name set from entity @s data.name
scoreboard players operation #Search ec.guild_id = #gd_vote_guild_b ec.var
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run data modify storage evercraft:guild temp.guild_b_name set from entity @s data.name

execute store result storage evercraft:guild temp.guild_a int 1 run scoreboard players get #gd_vote_guild_a ec.var
execute store result storage evercraft:guild temp.guild_b int 1 run scoreboard players get #gd_vote_guild_b ec.var

# Alliance (type=1)
execute if score #gd_vote_type ec.var matches 1 run function evercraft:guild/diplomacy/alliance/add with storage evercraft:guild temp

# Competition (type=2) — start event
execute if score #gd_vote_type ec.var matches 2 run function evercraft:guild/diplomacy/event/start

# Pillage (type=3) — make enemies, then start event
execute if score #gd_vote_type ec.var matches 3 run function evercraft:guild/diplomacy/enemy/add with storage evercraft:guild temp
execute if score #gd_vote_type ec.var matches 3 run function evercraft:guild/diplomacy/event/start

# Remove Alliance (type=4) — remove from both guilds' alliance lists
execute if score #gd_vote_type ec.var matches 4 store result storage evercraft:guild temp.target_id int 1 run scoreboard players get #gd_vote_guild_b ec.var
execute if score #gd_vote_type ec.var matches 4 as @e[type=marker,tag=ec.guild] if score @s ec.guild_id = #gd_vote_guild_a ec.var run function evercraft:guild/diplomacy/alliance/remove_entry with storage evercraft:guild temp
execute if score #gd_vote_type ec.var matches 4 store result storage evercraft:guild temp.remove_id int 1 run scoreboard players get #gd_vote_guild_a ec.var
execute if score #gd_vote_type ec.var matches 4 as @e[type=marker,tag=ec.guild] if score @s ec.guild_id = #gd_vote_guild_b ec.var run function evercraft:guild/diplomacy/alliance/remove_entry_b with storage evercraft:guild temp

# Remove Enemy (type=5) — remove from both guilds' enemy lists
execute if score #gd_vote_type ec.var matches 5 store result storage evercraft:guild temp.target_id int 1 run scoreboard players get #gd_vote_guild_b ec.var
execute if score #gd_vote_type ec.var matches 5 as @e[type=marker,tag=ec.guild] if score @s ec.guild_id = #gd_vote_guild_a ec.var run function evercraft:guild/diplomacy/enemy/remove_from_marker
execute if score #gd_vote_type ec.var matches 5 store result storage evercraft:guild temp.target_id int 1 run scoreboard players get #gd_vote_guild_a ec.var
execute if score #gd_vote_type ec.var matches 5 as @e[type=marker,tag=ec.guild] if score @s ec.guild_id = #gd_vote_guild_b ec.var run function evercraft:guild/diplomacy/enemy/remove_from_marker

# Cleanup vote state
function evercraft:guild/diplomacy/propose/cleanup
