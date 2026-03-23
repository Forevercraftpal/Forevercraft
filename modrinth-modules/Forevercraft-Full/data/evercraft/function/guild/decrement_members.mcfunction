# Guild — Decrement member count on marker
# @s = guild marker entity
execute store result score #guild_mc ec.temp run data get entity @s data.member_count
scoreboard players remove #guild_mc ec.temp 1
execute store result entity @s data.member_count int 1 run scoreboard players get #guild_mc ec.temp
