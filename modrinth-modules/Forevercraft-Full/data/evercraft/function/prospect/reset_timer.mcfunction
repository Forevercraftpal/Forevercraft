# Ore Node: Reset spawn timer based on movement state
# Moving (counter > 0): 600 ticks (30 seconds)
# Standing still (counter = 0): 8000 ticks (~6.7 minutes)

execute if score @s ec.pr_moving matches 1.. run scoreboard players set @s ec.pr_timer 600
execute if score @s ec.pr_moving matches ..0 run scoreboard players set @s ec.pr_timer 8000
