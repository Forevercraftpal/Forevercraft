# Earthsong — Common → Uncommon (5 objectives)
execute if score @s ec.tq_mine_stone matches 100.. run scoreboard players add @s ec.st_obj_done 1
execute if score @s ec.tq_mine_iron matches 25.. run scoreboard players add @s ec.st_obj_done 1
execute if score @s ec.tq_mine_dia matches 5.. run scoreboard players add @s ec.st_obj_done 1
execute if score @s ec.tq_mine_coal matches 50.. run scoreboard players add @s ec.st_obj_done 1
execute if score @s ach.blocks_mined matches 200.. run scoreboard players add @s ec.st_obj_done 1
