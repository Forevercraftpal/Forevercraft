# Guild Expedition — Check this player's guild level for multiplier
# @s = guilded player
# Updates #expedition_mult if this guild's level / 10 is higher

scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run function evercraft:guild/expedition/read_guild_level
