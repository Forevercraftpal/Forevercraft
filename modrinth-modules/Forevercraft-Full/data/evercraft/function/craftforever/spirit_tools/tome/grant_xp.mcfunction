# Artisan Tome — Grant vanilla experience levels equal to quest part number
# Uses a loop to add levels one at a time

execute if score #tq_xp_grant ec.var matches 1.. run experience add @s 1 levels
execute if score #tq_xp_grant ec.var matches 1.. run scoreboard players remove #tq_xp_grant ec.var 1
execute if score #tq_xp_grant ec.var matches 1.. run function evercraft:craftforever/spirit_tools/tome/grant_xp
