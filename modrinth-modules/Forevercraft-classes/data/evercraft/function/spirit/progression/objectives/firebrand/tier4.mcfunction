# Firebrand — Rare → Ornate (7 objectives)
# 1. Kill 2,000 mobs
execute if score @s ec.sp_kills matches 2000.. run scoreboard players add @s ec.sp_obj_done 1
# 2. Use Earthshatter 50 times
execute if score @s ec.sp_ability1_uses matches 50.. run scoreboard players add @s ec.sp_obj_done 1
# 3. Take 10,000 damage
execute if score @s ec.sp_damage_taken matches 10000.. run scoreboard players add @s ec.sp_obj_done 1
# 4. Complete dungeon floor 7
execute if score @s ec.sp_floor_max matches 7.. run scoreboard players add @s ec.sp_obj_done 1
# 5. Reach Castle floor 10
execute if score @s ic.record matches 10.. run scoreboard players add @s ec.sp_obj_done 1
# 6. Complete 10 quests
execute if score @s ec.sp_quests_done matches 10.. run scoreboard players add @s ec.sp_obj_done 1
# 7. Prestige Vitality
execute if score @s adv.pres_vita matches 1.. run scoreboard players add @s ec.sp_obj_done 1
