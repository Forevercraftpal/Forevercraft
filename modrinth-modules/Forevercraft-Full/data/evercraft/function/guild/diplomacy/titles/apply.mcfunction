# Guild Diplomacy — Apply active diplomacy title
# Reads @s ec.gd_title (0-8) and joins the appropriate team
# Callers handle clear_all before setting the score (team join auto-removes from old team)

# If 0, no title
execute if score @s ec.gd_title matches 0 run return 0

# Winner titles (1-4)
execute if score @s ec.gd_title matches 1 run team join gd.t_w1 @s
execute if score @s ec.gd_title matches 2 run team join gd.t_w2 @s
execute if score @s ec.gd_title matches 3 run team join gd.t_w3 @s
execute if score @s ec.gd_title matches 4 run team join gd.t_w4 @s

# Loser titles (5-8)
execute if score @s ec.gd_title matches 5 run team join gd.t_l1 @s
execute if score @s ec.gd_title matches 6 run team join gd.t_l2 @s
execute if score @s ec.gd_title matches 7 run team join gd.t_l3 @s
execute if score @s ec.gd_title matches 8 run team join gd.t_l4 @s
