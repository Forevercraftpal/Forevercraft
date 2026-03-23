# Foraging Bush: Reset spawn timer based on movement state
# Moving (counter > 0): 400 ticks (20 seconds)
# Standing still (counter = 0): 6000 ticks (5 minutes)

execute if score @s ec.fg_moving matches 1.. run scoreboard players set @s ec.fg_timer 400
execute if score @s ec.fg_moving matches ..0 run scoreboard players set @s ec.fg_timer 6000
