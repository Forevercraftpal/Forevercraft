# Calculate max laborer slots from Artisan Rank
# Rank 10 → 1 slot, 30 → 2, 50 → 3, 70 → 4, 90+ → 5

scoreboard players set @s ec.lb_max 0
execute if score @s ec.cf_rank matches 10.. run scoreboard players set @s ec.lb_max 1
execute if score @s ec.cf_rank matches 30.. run scoreboard players set @s ec.lb_max 2
execute if score @s ec.cf_rank matches 50.. run scoreboard players set @s ec.lb_max 3
execute if score @s ec.cf_rank matches 70.. run scoreboard players set @s ec.lb_max 4
execute if score @s ec.cf_rank matches 90.. run scoreboard players set @s ec.lb_max 5
