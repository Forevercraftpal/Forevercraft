# Bulwark Shield — Uncommon → Rare (6 objectives)
# 1. Kill 500 mobs
execute if score @s ec.sp_kills matches 500.. run scoreboard players add @s ec.sp_obj_done 1
# 2. Absorb 2,000 damage
execute if score @s ec.sp_total_absorb matches 2000.. run scoreboard players add @s ec.sp_obj_done 1
# 3. Complete dungeon floor 5
execute if score @s ec.sp_floor_max matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 4. Taunt 200 mobs
execute if score @s ec.sp_taunts matches 200.. run scoreboard players add @s ec.sp_obj_done 1
# 5. Reach Vitality level 5
execute if score @s adv.vitality matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 6. Survive 15 minutes in combat
execute if score @s ec.sp_survive matches 15.. run scoreboard players add @s ec.sp_obj_done 1
