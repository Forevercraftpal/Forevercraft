# Depthsworn — Rare → Ornate (7 objectives)
# 1. Kill 2,000 mobs
execute if score @s ec.sp_kills matches 2000.. run scoreboard players add @s ec.sp_obj_done 1
# 2. Use Counter Thrust 50 times
execute if score @s ec.sp_ability1_uses matches 50.. run scoreboard players add @s ec.sp_obj_done 1
# 3. Land 500 counter thrust hits
execute if score @s ec.sp_counter_hits matches 500.. run scoreboard players add @s ec.sp_obj_done 1
# 4. Complete dungeon floor 7
execute if score @s ec.sp_floor_max matches 7.. run scoreboard players add @s ec.sp_obj_done 1
# 5. Reach Castle floor 10
execute if score @s ic.record matches 10.. run scoreboard players add @s ec.sp_obj_done 1
# 6. Complete 10 quests
execute if score @s ec.sp_quests_done matches 10.. run scoreboard players add @s ec.sp_obj_done 1
# 7. Prestige Agility
execute if score @s adv.pres_agil matches 1.. run scoreboard players add @s ec.sp_obj_done 1
