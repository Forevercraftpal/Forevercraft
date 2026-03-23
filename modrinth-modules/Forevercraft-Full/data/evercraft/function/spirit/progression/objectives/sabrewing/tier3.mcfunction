# Sabrewing — Uncommon → Rare (6 objectives)
# 1. Kill 500 mobs
execute if score @s ec.sp_kills matches 500.. run scoreboard players add @s ec.sp_obj_done 1
# 2. Land 100 critical shots
execute if score @s ec.sp_crits matches 100.. run scoreboard players add @s ec.sp_obj_done 1
# 3. Complete dungeon floor 5
execute if score @s ec.sp_floor_max matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 4. Get 100 ranged kills
execute if score @s ec.sp_range_kills matches 100.. run scoreboard players add @s ec.sp_obj_done 1
# 5. Reach Dexterity level 5
execute if score @s adv.dexterity matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 6. Speed kill a boss
execute if score @s ec.sp_speed_kill matches 1.. run scoreboard players add @s ec.sp_obj_done 1
