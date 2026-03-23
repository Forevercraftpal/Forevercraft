# H2H Competition — Trigger Handler
# Runs as player who triggered ec.h2h

# Re-enable trigger for next use
scoreboard players enable @s ec.h2h

# Accept (1-6 = competition type)
execute if score @s ec.h2h matches 1 run function evercraft:competition/h2h/accept {type:1}
execute if score @s ec.h2h matches 2 run function evercraft:competition/h2h/accept {type:2}
execute if score @s ec.h2h matches 3 run function evercraft:competition/h2h/accept {type:3}
execute if score @s ec.h2h matches 4 run function evercraft:competition/h2h/accept {type:4}
execute if score @s ec.h2h matches 5 run function evercraft:competition/h2h/accept {type:5}
execute if score @s ec.h2h matches 6 run function evercraft:competition/h2h/accept {type:6}

# Decline
execute if score @s ec.h2h matches -1 run function evercraft:competition/h2h/decline

# Reset trigger
scoreboard players set @s ec.h2h 0
