# Multi-Floor Dungeon — Check for descent trigger responses
# Called from tick_active when dg.awaiting_descent is active

# Decrement timer
scoreboard players remove #dg_descent_timer ec.var 1

# Check if anyone chose YES (trigger = 1)
execute if entity @a[tag=dg.player,scores={ec.dg_descend=1}] run function evercraft:dungeon/floor/descend
execute if entity @a[tag=dg.player,scores={ec.dg_descend=1}] run return 0

# Check if anyone chose NO (trigger = 2) or timer expired
execute if entity @a[tag=dg.player,scores={ec.dg_descend=2}] run function evercraft:dungeon/floor/finish_run
execute if entity @a[tag=dg.player,scores={ec.dg_descend=2}] run return 0

# Timer expired — auto-complete (they didn't descend)
execute if score #dg_descent_timer ec.var matches ..0 run function evercraft:dungeon/floor/finish_run
