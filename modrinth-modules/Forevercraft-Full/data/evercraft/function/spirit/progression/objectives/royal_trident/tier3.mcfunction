# Depthsworn — Uncommon → Rare (6 objectives)
# 1. Kill 500 mobs
execute if score @s ec.sp_kills matches 500.. run scoreboard players add @s ec.sp_obj_done 1
# 2. Land 100 counter thrust hits
execute if score @s ec.sp_counter_hits matches 100.. run scoreboard players add @s ec.sp_obj_done 1
# 3. Complete dungeon floor 5
execute if score @s ec.sp_floor_max matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 4. Block 200 attacks
execute if score @s ec.sp_shield_block matches 200.. run scoreboard players add @s ec.sp_obj_done 1
# 5. Reach Agility level 5
execute if score @s adv.agility matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 6. Reach a 10-kill streak
execute if score @s ec.sp_kill_streak matches 10.. run scoreboard players add @s ec.sp_obj_done 1
