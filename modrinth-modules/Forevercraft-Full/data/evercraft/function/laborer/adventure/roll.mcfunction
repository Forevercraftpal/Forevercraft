# Roll for adventure event on expedition return
# 5% base chance, 10% at quality 10+
# Runs as: laborer entity

scoreboard players set #lb_adv_chance ec.lb_temp 5
execute if score @s ec.lb_quality matches 10.. run scoreboard players set #lb_adv_chance ec.lb_temp 10

# Random roll 1-100
execute store result score #lb_adv_roll ec.lb_temp run random value 1..100

# If roll <= chance, trigger adventure
execute if score #lb_adv_roll ec.lb_temp <= #lb_adv_chance ec.lb_temp run function evercraft:laborer/adventure/trigger
