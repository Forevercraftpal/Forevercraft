# Guild Expedition — Cancel Vote (no votes cast)
# @s = guild marker

data modify entity @s data.expedition.state set value 0

execute store result score #Search ec.guild_id run data get entity @s data.id
execute store result storage evercraft:expedition temp.guild_id int 1 run scoreboard players get #Search ec.guild_id
function evercraft:guild/expedition/vote/announce_cancel with storage evercraft:expedition temp

tag @a remove ec.gexp_voted
