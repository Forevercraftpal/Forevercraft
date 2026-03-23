# Guild Expedition — Start (initiate biome vote)
# @s = player who triggered (ec.guild_menu set 10)

# Must be rank 4+ (Representative)
execute unless score @s ec.guild_rank matches 4.. run return run tellraw @s [{text:"[Guild] ",color:"green"},{text:"You need rank ",color:"red"},{text:"Representative (4)",color:"gold"},{text:" or higher to start an expedition.",color:"red"}]

# Find guild marker
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run function evercraft:guild/expedition/start_validate
