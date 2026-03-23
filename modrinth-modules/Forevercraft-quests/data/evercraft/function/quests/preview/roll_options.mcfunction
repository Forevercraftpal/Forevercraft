# Roll distinct quest IDs for preview
# Macro: {tier:N,max:M}

# Roll options
$execute store result score @s ec.qp_opt1 run random value 1..$(max)
$execute store result score @s ec.qp_opt2 run random value 1..$(max)
$execute store result score @s ec.qp_opt3 run random value 1..$(max)

# De-duplicate opt2 vs opt1 (3 attempts)
$execute if score @s ec.qp_opt2 = @s ec.qp_opt1 store result score @s ec.qp_opt2 run random value 1..$(max)
$execute if score @s ec.qp_opt2 = @s ec.qp_opt1 store result score @s ec.qp_opt2 run random value 1..$(max)
$execute if score @s ec.qp_opt2 = @s ec.qp_opt1 store result score @s ec.qp_opt2 run random value 1..$(max)

# De-duplicate opt3 vs opt1 and opt2 (3 attempts each)
$execute if score @s ec.qp_opt3 = @s ec.qp_opt1 store result score @s ec.qp_opt3 run random value 1..$(max)
$execute if score @s ec.qp_opt3 = @s ec.qp_opt2 store result score @s ec.qp_opt3 run random value 1..$(max)
$execute if score @s ec.qp_opt3 = @s ec.qp_opt1 store result score @s ec.qp_opt3 run random value 1..$(max)
$execute if score @s ec.qp_opt3 = @s ec.qp_opt2 store result score @s ec.qp_opt3 run random value 1..$(max)
$execute if score @s ec.qp_opt3 = @s ec.qp_opt1 store result score @s ec.qp_opt3 run random value 1..$(max)
$execute if score @s ec.qp_opt3 = @s ec.qp_opt2 store result score @s ec.qp_opt3 run random value 1..$(max)
