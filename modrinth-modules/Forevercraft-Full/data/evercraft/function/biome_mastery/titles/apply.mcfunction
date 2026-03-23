# Biome Mastery — Apply active biome title
# Reads @s bm.title (0-25) and joins appropriate team
# Callers handle clear_all before setting the score (team join auto-removes from old team)

execute if score @s bm.title matches 0 run return 0

execute if score @s bm.title matches 1 run team join bm.t_0 @s
execute if score @s bm.title matches 2 run team join bm.t_1 @s
execute if score @s bm.title matches 3 run team join bm.t_2 @s
execute if score @s bm.title matches 4 run team join bm.t_3 @s
execute if score @s bm.title matches 5 run team join bm.t_4 @s
execute if score @s bm.title matches 6 run team join bm.t_5 @s
execute if score @s bm.title matches 7 run team join bm.t_6 @s
execute if score @s bm.title matches 8 run team join bm.t_7 @s
execute if score @s bm.title matches 9 run team join bm.t_8 @s
execute if score @s bm.title matches 10 run team join bm.t_9 @s
execute if score @s bm.title matches 11 run team join bm.t_10 @s
execute if score @s bm.title matches 12 run team join bm.t_11 @s
execute if score @s bm.title matches 13 run team join bm.t_12 @s
execute if score @s bm.title matches 14 run team join bm.t_13 @s
execute if score @s bm.title matches 15 run team join bm.t_14 @s
execute if score @s bm.title matches 16 run team join bm.t_15 @s
execute if score @s bm.title matches 17 run team join bm.t_16 @s
execute if score @s bm.title matches 18 run team join bm.t_17 @s
execute if score @s bm.title matches 19 run team join bm.t_18 @s
execute if score @s bm.title matches 20 run team join bm.t_19 @s
execute if score @s bm.title matches 21 run team join bm.t_20 @s
execute if score @s bm.title matches 22 run team join bm.t_21 @s
execute if score @s bm.title matches 23 run team join bm.t_22 @s
execute if score @s bm.title matches 24 run team join bm.t_23 @s
execute if score @s bm.title matches 25 run team join bm.t_24 @s
