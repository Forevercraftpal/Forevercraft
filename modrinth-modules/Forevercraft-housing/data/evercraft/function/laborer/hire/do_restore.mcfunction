# Restore contract item to player (1 tick after consume_item destroyed it)
# Dispatches to loot give based on the hire type score
tag @s remove ec.lb_restore

# Give back the correct contract type using loot give
execute if score @s ec.lb_hire_type matches 1 run loot give @s loot evercraft:laborer/contracts/miner
execute if score @s ec.lb_hire_type matches 2 run loot give @s loot evercraft:laborer/contracts/farmer
execute if score @s ec.lb_hire_type matches 3 run loot give @s loot evercraft:laborer/contracts/fisher
execute if score @s ec.lb_hire_type matches 4 run loot give @s loot evercraft:laborer/contracts/woodcutter
execute if score @s ec.lb_hire_type matches 5 run loot give @s loot evercraft:laborer/contracts/forager
execute if score @s ec.lb_hire_type matches 6 run loot give @s loot evercraft:laborer/contracts/prospector
