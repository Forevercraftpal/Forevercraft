# Zephyr Edge — Uncommon → Rare (6 objectives)
# 1. Kill 500 mobs
execute if score @s ec.sp_kills matches 500.. run scoreboard players add @s ec.sp_obj_done 1
# 2. Dodge 100 attacks
execute if score @s ec.sp_dodges matches 100.. run scoreboard players add @s ec.sp_obj_done 1
# 3. Complete dungeon floor 5
execute if score @s ec.sp_floor_max matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 4. Reach a 10-kill streak
execute if score @s ec.sp_kill_streak matches 10.. run scoreboard players add @s ec.sp_obj_done 1
# 5. Reach Evasion level 5
execute if score @s adv.evasion matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 6. Kill 30 mobs in a single run
execute if score @s ec.sp_run_kills matches 30.. run scoreboard players add @s ec.sp_obj_done 1
