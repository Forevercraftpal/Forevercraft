# XP cost lookup — sets #wm_xp_cost based on current #wm_level
# Level 0→1: 5, 1→2: 15, 2→3: 30, 3→4: 50, 4→5: 75, 5→6: 125, 6→7: 250
scoreboard players set #wm_xp_cost ec.var 5
execute if score #wm_level ec.var matches 1 run scoreboard players set #wm_xp_cost ec.var 15
execute if score #wm_level ec.var matches 2 run scoreboard players set #wm_xp_cost ec.var 30
execute if score #wm_level ec.var matches 3 run scoreboard players set #wm_xp_cost ec.var 50
execute if score #wm_level ec.var matches 4 run scoreboard players set #wm_xp_cost ec.var 75
execute if score #wm_level ec.var matches 5 run scoreboard players set #wm_xp_cost ec.var 125
execute if score #wm_level ec.var matches 6 run scoreboard players set #wm_xp_cost ec.var 250
