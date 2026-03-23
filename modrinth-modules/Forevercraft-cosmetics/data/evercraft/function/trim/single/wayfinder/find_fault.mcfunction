data modify storage trim_abilities:wayfinder check_succes set string block ~ ~ ~ LastOutput 81 100
setblock ~ ~ ~ air
tellraw @s [{"color":"red","text":"Something went wrong in the command: "},{"color":"red","nbt":"check_succes","storage":"trim_abilities:wayfinder"}]