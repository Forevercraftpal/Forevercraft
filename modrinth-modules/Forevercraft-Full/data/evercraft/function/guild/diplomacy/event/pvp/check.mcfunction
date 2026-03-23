# Guild Diplomacy — PvP zone check for pillage participants
# @s = event participant, at their position
# Checks if player is in enemy guild's 128-block zone

# Determine which guild is "enemy" for this player
scoreboard players set #gd_enemy_guild ec.temp 0
execute if score @s ec.guild_id = #gd_event_guild_a ec.var run scoreboard players operation #gd_enemy_guild ec.temp = #gd_event_guild_b ec.var
execute if score @s ec.guild_id = #gd_event_guild_b ec.var run scoreboard players operation #gd_enemy_guild ec.temp = #gd_event_guild_a ec.var

# Look up enemy guild marker and get their zone coords
scoreboard players operation #Search ec.guild_id = #gd_enemy_guild ec.temp
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run function evercraft:guild/diplomacy/event/pvp/distance_check
