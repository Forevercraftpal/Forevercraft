# Duel Trigger Handler — processes /trigger ec.duel values
# Runs as each player with ec.duel >= 1 or <= -1

# Accept Open World (value 1)
execute if score @s ec.duel matches 1 run function evercraft:duel/invite/accept_open

# Accept Arena (value 2)
execute if score @s ec.duel matches 2 run function evercraft:duel/invite/accept_arena

# Spectate (value 3)
execute if score @s ec.duel matches 3 at @s run function evercraft:duel/spectate/teleport

# Accept Team Duel (value 4)
execute if score @s ec.duel matches 4 run function evercraft:duel/team/receive_accept

# Accept Class Duel (value 5)
execute if score @s ec.duel matches 5 run function evercraft:duel/class/receive_accept

# Accept First-to-3 (value 6)
execute if score @s ec.duel matches 6 run function evercraft:duel/ftx/accept {target:3}

# Accept First-to-5 (value 7)
execute if score @s ec.duel matches 7 run function evercraft:duel/ftx/accept {target:5}

# Class selection (values 10-23 map to class IDs 1-14)
execute if score @s ec.duel matches 10..23 run function evercraft:duel/class/select_class

# Team partner confirm (value 30)
execute if score @s ec.duel matches 30 run function evercraft:duel/team/partner_confirm

# Team partner decline (value 31)
execute if score @s ec.duel matches 31 run function evercraft:duel/team/partner_decline

# Decline (value -1)
execute if score @s ec.duel matches -1 run function evercraft:duel/invite/decline

# Reset trigger
scoreboard players set @s ec.duel 0
scoreboard players enable @s ec.duel
