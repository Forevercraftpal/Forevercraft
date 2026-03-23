# Ashcrown Mace — Uncommon → Rare (6 objectives)
# 1. Kill 500 mobs
execute if score @s ec.sp_kills matches 500.. run scoreboard players add @s ec.sp_obj_done 1
# 2. Block 2,000 damage
execute if score @s ec.sp_damage_blocked matches 2000.. run scoreboard players add @s ec.sp_obj_done 1
# 3. Complete dungeon floor 5
execute if score @s ec.sp_floor_max matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 4. Protect allies from 500 damage
execute if score @s ec.sp_ally_protect matches 500.. run scoreboard players add @s ec.sp_obj_done 1
# 5. Reach Vitality level 5
execute if score @s adv.vitality matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 6. Complete 5 quests
execute if score @s ec.sp_quests_done matches 5.. run scoreboard players add @s ec.sp_obj_done 1
