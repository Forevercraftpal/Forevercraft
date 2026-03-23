# Nite — Common → Uncommon (5 objectives)
# 1. Kill 100 mobs
execute if score @s ec.sp_kills matches 100.. run scoreboard players add @s ec.sp_obj_done 1
# 2. Get 10 whirlwind kills
execute if score @s ec.sp_whirl_kills matches 10.. run scoreboard players add @s ec.sp_obj_done 1
# 3. Visit 5 biomes
execute if score @s ec.sp_biomes matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 4. Complete 1 dungeon run
execute if score @s ec.sp_dungeon_runs matches 1.. run scoreboard players add @s ec.sp_obj_done 1
# 5. Reach a 10-kill streak
execute if score @s ec.sp_kill_streak matches 10.. run scoreboard players add @s ec.sp_obj_done 1
