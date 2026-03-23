# Special Titles — Apply active special title
# Reads @s ec.special_title (0-7) and joins appropriate team
# Callers handle clear_all before setting the score (team join auto-removes from old team)

execute if score @s ec.special_title matches 0 run return 0

execute if score @s ec.special_title matches 1 run team join sp.t_1 @s
execute if score @s ec.special_title matches 2 run team join sp.t_2 @s
execute if score @s ec.special_title matches 3 run team join sp.t_3 @s
execute if score @s ec.special_title matches 4 run team join sp.t_4 @s
execute if score @s ec.special_title matches 5 run team join sp.t_5 @s
execute if score @s ec.special_title matches 6 run team join sp.t_6 @s
execute if score @s ec.special_title matches 7 run team join sp.t_7 @s
