# Guild Zone — Player leaves guild zone
# @s = player leaving zone
scoreboard players set @s ec.guild_in_zone 0
tellraw @s [{text:"[Guild] ",color:"green"},{text:"You have left the guild zone.",color:"gray"}]

# Remove guild companion pet abilities
function evercraft:guild/pets/abilities/reset_all
