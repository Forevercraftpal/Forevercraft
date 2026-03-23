# Realm Milestone — Apply permanent DR bonus to all players
# $(amount) = bonus in x10 scale (e.g. 5 = +0.5 DR)
# Adds to cumulative #rm_dr_bonus, removes old modifier, re-applies with new total
$scoreboard players add #rm_dr_bonus ec.var $(amount)
execute as @a run attribute @s luck modifier remove evercraft:milestone_dr_bonus
execute store result storage evercraft:milestones temp.dr_total double 0.1 run scoreboard players get #rm_dr_bonus ec.var
execute as @a run function evercraft:milestones/complete/apply_dr_modifier with storage evercraft:milestones temp
