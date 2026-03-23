# Guild Expedition — Grant computed bonus XP
# #exp_bonus ec.temp = amount to grant
# @s = player

execute store result storage evercraft:expedition bonus.amount int 1 run scoreboard players get #exp_bonus ec.temp
function evercraft:guild/expedition/do_grant_xp with storage evercraft:expedition bonus
