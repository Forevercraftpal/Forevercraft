# Guild GUI — Display info page
# $(guild_name), $(guild_level), $(guild_xp), $(member_count)
# @s = viewing player (context restored after marker read)

# Get player's rank name
execute if score @s ec.guild_rank matches 1 run data modify storage evercraft:guild temp.rank_name set value "Associate"
execute if score @s ec.guild_rank matches 2 run data modify storage evercraft:guild temp.rank_name set value "Member"
execute if score @s ec.guild_rank matches 3 run data modify storage evercraft:guild temp.rank_name set value "Aide"
execute if score @s ec.guild_rank matches 4 run data modify storage evercraft:guild temp.rank_name set value "Representative"
execute if score @s ec.guild_rank matches 5 run data modify storage evercraft:guild temp.rank_name set value "Administrator"
execute if score @s ec.guild_rank matches 6 run data modify storage evercraft:guild temp.rank_name set value "Dedicated"
execute if score @s ec.guild_rank matches 7 run data modify storage evercraft:guild temp.rank_name set value "Valorous"

execute store result storage evercraft:guild temp.player_contrib int 1 run scoreboard players get @s ec.guild_contrib

function evercraft:guild/gui/info_tellraw with storage evercraft:guild temp
