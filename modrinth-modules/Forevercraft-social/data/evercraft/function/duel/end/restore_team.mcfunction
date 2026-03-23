# Duel — Restore Team (runs as each ex-duelist after duel ends)
# Reads ec.duel_team and re-applies the correct team

# Boss title (1)
execute if score @s ec.duel_team matches 1 run function evercraft:bosses/titles/apply
execute if score @s ec.duel_team matches 1 run return 0

# Tree cosmetic (2)
execute if score @s ec.duel_team matches 2 run function evercraft:advantage/cosmetics/title_tag
execute if score @s ec.duel_team matches 2 run return 0

# Crate cosmetic (3)
execute if score @s ec.duel_team matches 3 run function evercraft:advantage/cosmetics/crate_title_apply
execute if score @s ec.duel_team matches 3 run return 0

# Party color (4)
execute if score @s ec.pty_clr matches 1.. if score @s ec.duel_team matches 4 run function evercraft:party/color/rejoin
