# World Boss — Apply active boss title
# Reads @s wb.title (0-45) and joins the appropriate team
# Callers handle clear_all before setting the score (team join auto-removes from old team)

# If 0, no title
execute if score @s wb.title matches 0 run return 0

# Hollow King (1-4)
execute if score @s wb.title matches 1 run team join wb.t_hk1 @s
execute if score @s wb.title matches 2 run team join wb.t_hk2 @s
execute if score @s wb.title matches 3 run team join wb.t_hk3 @s
execute if score @s wb.title matches 4 run team join wb.t_hk4 @s

# Verdant Warden (5-8)
execute if score @s wb.title matches 5 run team join wb.t_vw1 @s
execute if score @s wb.title matches 6 run team join wb.t_vw2 @s
execute if score @s wb.title matches 7 run team join wb.t_vw3 @s
execute if score @s wb.title matches 8 run team join wb.t_vw4 @s

# Stormforged (9-12)
execute if score @s wb.title matches 9 run team join wb.t_sf1 @s
execute if score @s wb.title matches 10 run team join wb.t_sf2 @s
execute if score @s wb.title matches 11 run team join wb.t_sf3 @s
execute if score @s wb.title matches 12 run team join wb.t_sf4 @s

# Tidecaller (13-16)
execute if score @s wb.title matches 13 run team join wb.t_tc1 @s
execute if score @s wb.title matches 14 run team join wb.t_tc2 @s
execute if score @s wb.title matches 15 run team join wb.t_tc3 @s
execute if score @s wb.title matches 16 run team join wb.t_tc4 @s

# Earthshaker (17-20)
execute if score @s wb.title matches 17 run team join wb.t_es1 @s
execute if score @s wb.title matches 18 run team join wb.t_es2 @s
execute if score @s wb.title matches 19 run team join wb.t_es3 @s
execute if score @s wb.title matches 20 run team join wb.t_es4 @s

# Nightmare (21-24)
execute if score @s wb.title matches 21 run team join wb.t_nm1 @s
execute if score @s wb.title matches 22 run team join wb.t_nm2 @s
execute if score @s wb.title matches 23 run team join wb.t_nm3 @s
execute if score @s wb.title matches 24 run team join wb.t_nm4 @s

# Infernal Titan (25-28)
execute if score @s wb.title matches 25 run team join wb.t_it1 @s
execute if score @s wb.title matches 26 run team join wb.t_it2 @s
execute if score @s wb.title matches 27 run team join wb.t_it3 @s
execute if score @s wb.title matches 28 run team join wb.t_it4 @s

# Soul Warden (29-32)
execute if score @s wb.title matches 29 run team join wb.t_sw1 @s
execute if score @s wb.title matches 30 run team join wb.t_sw2 @s
execute if score @s wb.title matches 31 run team join wb.t_sw3 @s
execute if score @s wb.title matches 32 run team join wb.t_sw4 @s

# Crimson Behemoth (33-36)
execute if score @s wb.title matches 33 run team join wb.t_cb1 @s
execute if score @s wb.title matches 34 run team join wb.t_cb2 @s
execute if score @s wb.title matches 35 run team join wb.t_cb3 @s
execute if score @s wb.title matches 36 run team join wb.t_cb4 @s

# Void Sovereign (37-40)
execute if score @s wb.title matches 37 run team join wb.t_vs1 @s
execute if score @s wb.title matches 38 run team join wb.t_vs2 @s
execute if score @s wb.title matches 39 run team join wb.t_vs3 @s
execute if score @s wb.title matches 40 run team join wb.t_vs4 @s

# Ender Architect (41-44)
execute if score @s wb.title matches 41 run team join wb.t_ea1 @s
execute if score @s wb.title matches 42 run team join wb.t_ea2 @s
execute if score @s wb.title matches 43 run team join wb.t_ea3 @s
execute if score @s wb.title matches 44 run team join wb.t_ea4 @s

# World Boss Champion (45)
execute if score @s wb.title matches 45 run team join wb.t_champ @s
