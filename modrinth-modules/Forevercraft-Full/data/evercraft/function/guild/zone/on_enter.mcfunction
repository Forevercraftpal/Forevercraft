# Guild Zone — Player enters guild zone
# @s = player entering zone
scoreboard players set @s ec.guild_in_zone 1
tellraw @s [{text:"[Guild] ",color:"green"},{text:"You have entered the guild zone.",color:"green"}]
playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 0.5 1.5

# Apply guild companion pet abilities
function evercraft:guild/pets/abilities/apply_all_zone
