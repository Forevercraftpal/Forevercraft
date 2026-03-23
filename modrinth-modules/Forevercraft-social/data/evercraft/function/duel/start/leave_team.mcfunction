# Duel — Leave Team (runs as each duelist at duel start)
# Saves which team system is active, then removes from team so PvP works

# Determine active team system and save to ec.duel_team
# 0 = none, 1 = boss title, 2 = tree cosmetic, 3 = crate cosmetic, 4 = party color
scoreboard players set @s ec.duel_team 0
execute if score @s wb.title matches 1.. run scoreboard players set @s ec.duel_team 1
execute if score @s adv.cosm_tree matches 1.. if score @s ec.duel_team matches 0 run scoreboard players set @s ec.duel_team 2
execute if score @s adv.cc_title matches 1.. if score @s ec.duel_team matches 0 run scoreboard players set @s ec.duel_team 3
execute if score @s ec.pty_clr matches 1.. run scoreboard players set @s ec.duel_team 4

# Leave whatever team we're on
team leave @s
