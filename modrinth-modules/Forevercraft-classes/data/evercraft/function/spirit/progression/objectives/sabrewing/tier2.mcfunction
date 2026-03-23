# Sabrewing — Common → Uncommon (5 objectives)
# 1. Kill 100 mobs
execute if score @s ec.sp_kills matches 100.. run scoreboard players add @s ec.sp_obj_done 1
# 2. Land 25 critical shots
execute if score @s ec.sp_crits matches 25.. run scoreboard players add @s ec.sp_obj_done 1
# 3. Visit 5 biomes
execute if score @s ec.sp_biomes matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 4. Complete 1 dungeon run
execute if score @s ec.sp_dungeon_runs matches 1.. run scoreboard players add @s ec.sp_obj_done 1
# 5. Get 25 ranged kills
execute if score @s ec.sp_range_kills matches 25.. run scoreboard players add @s ec.sp_obj_done 1
