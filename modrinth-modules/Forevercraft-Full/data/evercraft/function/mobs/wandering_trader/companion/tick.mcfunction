# Despawn companion villagers whose wandering trader is gone
execute as @e[type=villager,tag=ec.wt_companion] at @s unless entity @e[type=wandering_trader,tag=ec.wt_has_companion,distance=..200] run kill @s

# Reschedule only if companions still exist
execute if entity @e[type=villager,tag=ec.wt_companion,limit=1] run schedule function evercraft:mobs/wandering_trader/companion/tick 5s replace
