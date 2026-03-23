# Bulwark Shield — Common → Uncommon (5 objectives)
# 1. Kill 100 mobs
execute if score @s ec.sp_kills matches 100.. run scoreboard players add @s ec.sp_obj_done 1
# 2. Absorb 500 damage
execute if score @s ec.sp_total_absorb matches 500.. run scoreboard players add @s ec.sp_obj_done 1
# 3. Visit 5 biomes
execute if score @s ec.sp_biomes matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 4. Complete 1 dungeon run
execute if score @s ec.sp_dungeon_runs matches 1.. run scoreboard players add @s ec.sp_obj_done 1
# 5. Taunt 50 mobs
execute if score @s ec.sp_taunts matches 50.. run scoreboard players add @s ec.sp_obj_done 1
