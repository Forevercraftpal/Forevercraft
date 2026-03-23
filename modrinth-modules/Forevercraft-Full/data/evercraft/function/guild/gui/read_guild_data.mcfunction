# Guild GUI — Read guild data from marker entity into storage
# @s = guild marker entity

data modify storage evercraft:guild temp.guild_name set from entity @s data.name
execute store result storage evercraft:guild temp.guild_level int 1 run data get entity @s data.level
execute store result storage evercraft:guild temp.guild_xp int 1 run data get entity @s data.xp
execute store result storage evercraft:guild temp.member_count int 1 run data get entity @s data.member_count
