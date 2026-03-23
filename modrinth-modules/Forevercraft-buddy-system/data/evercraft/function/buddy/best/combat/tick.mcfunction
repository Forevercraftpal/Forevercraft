# Best Buddy — Combat AI Tick (1s schedule)
# @s = player with an active best buddy
# Best buddy attacks hostile mobs like a wolf, regardless of mob type

# Early exits
execute unless score @s ec.bd_best_active matches 1 run return fail
execute unless entity @e[tag=ec.bd_best,type=#evercraft:tameable_companions,distance=..32,limit=1] run return fail

# Decrement attack cooldown
execute if score @s ec.bd_best_atk_cd matches 1.. run scoreboard players remove @s ec.bd_best_atk_cd 1
execute if score @s ec.bd_best_atk_cd matches 1.. run return fail

# Find nearest hostile mob within 8 blocks of the best buddy
execute as @e[tag=ec.bd_best,type=#evercraft:tameable_companions,distance=..32,limit=1] at @s run function evercraft:buddy/best/combat/find_target
