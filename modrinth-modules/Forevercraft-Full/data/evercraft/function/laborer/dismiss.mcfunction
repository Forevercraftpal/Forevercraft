# Dismiss a laborer — called when player confirms dismissal
# Runs as: player. Target laborer tagged ec.lb_target.

# Kill the laborer's interaction entity
execute at @e[tag=ec.lb_target,type=villager,limit=1] as @e[type=interaction,tag=ec.lb_interact,distance=..3,limit=1] run kill @s

# Kill the laborer villager
execute as @e[tag=ec.lb_target,type=villager,limit=1] run kill @s

# Decrement player count
scoreboard players remove @s ec.lb_count 1
execute if score @s ec.lb_count matches ..-1 run scoreboard players set @s ec.lb_count 0

# Feedback
tellraw @s [{"text":"[Laborer] ","color":"gold"},{"text":"Laborer dismissed.","color":"red"}]
playsound minecraft:entity.villager.hurt master @s ~ ~ ~ 1 1
