# Guild — Add XP directly to guild (not via contribution)
# $(amount) = XP to add
# @s = guilded player

execute unless score @s ec.guild_id matches 1.. run return 0

$scoreboard players set #guild_xp_add ec.temp $(amount)
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run function evercraft:guild/contribution/apply_guild_xp
