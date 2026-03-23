# Pharaoh's Fist — Uncommon → Rare (6 objectives)
# 1. Kill 500 mobs
execute if score @s ec.sp_kills matches 500.. run scoreboard players add @s ec.sp_obj_done 1
# 2. Land 200 impact strikes
execute if score @s ec.sp_impact_hits matches 200.. run scoreboard players add @s ec.sp_obj_done 1
# 3. Complete dungeon floor 5
execute if score @s ec.sp_floor_max matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 4. Win 5 duels
execute if score @s ec.sp_duel_wins matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 5. Reach Agility level 5
execute if score @s adv.agility matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 6. Survive 10 minutes in combat
execute if score @s ec.sp_survive matches 10.. run scoreboard players add @s ec.sp_obj_done 1
