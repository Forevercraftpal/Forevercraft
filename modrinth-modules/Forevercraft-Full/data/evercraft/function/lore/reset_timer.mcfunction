# Lore Discovery: Reset spawn timer based on movement state
# Moving (counter > 0): 400 ticks (20 seconds)
# Standing still (counter = 0): 8400 ticks (7 minutes)

execute if score @s ec.lore_moving matches 1.. run scoreboard players set @s ec.lore_timer 400
execute if score @s ec.lore_moving matches ..0 run scoreboard players set @s ec.lore_timer 8400

# The Dreaming: triple lore sparkle spawn rate
execute if score #we_dreaming_lock ec.var matches 1 if score @s ec.lore_moving matches 1.. run scoreboard players set @s ec.lore_timer 133
execute if score #we_dreaming_lock ec.var matches 1 if score @s ec.lore_moving matches ..0 run scoreboard players set @s ec.lore_timer 2800
