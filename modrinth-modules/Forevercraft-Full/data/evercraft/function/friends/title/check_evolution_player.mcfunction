# Friend Title — Check evolution for this player's received titles
# @s = player

execute store result storage evercraft:friends temp.evo_uuid3 int 1 run data get entity @s UUID[3]
execute store result storage evercraft:friends temp.evo_cid int 1 run scoreboard players get @s companion.id
function evercraft:friends/title/check_evolution_inner with storage evercraft:friends temp
