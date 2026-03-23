# Spirit Tome — Grant vanilla experience levels equal to quest part number
# Uses a loop to add levels one at a time (experience add @s 1 levels)

execute if score #sq_xp_grant ec.var matches 1.. run experience add @s 1 levels
execute if score #sq_xp_grant ec.var matches 1.. run scoreboard players remove #sq_xp_grant ec.var 1
execute if score #sq_xp_grant ec.var matches 1.. run function evercraft:spirit_tome/grant_xp
