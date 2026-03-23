# Guild — Clean up one member during disband
# @s = guild member being removed

function evercraft:guild/buffs/remove
scoreboard players set @s ec.guild_id 0
scoreboard players set @s ec.guild_rank 0
scoreboard players set @s ec.guild_contrib 0
scoreboard players set @s ec.guild_in_zone 0
clear @s minecraft:writable_book[custom_data~{guild_charter:1b}]
advancement revoke @s only evercraft:guild/use_charter
