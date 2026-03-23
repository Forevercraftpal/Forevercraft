# Ellegaard Trident — Common → Uncommon (5 objectives)
# 1. Kill 100 mobs
execute if score @s ec.sp_kills matches 100.. run scoreboard players add @s ec.sp_obj_done 1
# 2. Get 25 thrown kills
execute if score @s ec.sp_thrown_kills matches 25.. run scoreboard players add @s ec.sp_obj_done 1
# 3. Visit 5 biomes
execute if score @s ec.sp_biomes matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 4. Complete 1 dungeon run
execute if score @s ec.sp_dungeon_runs matches 1.. run scoreboard players add @s ec.sp_obj_done 1
# 5. Explore 1 ocean structure
execute if score @s ec.sp_ocean_explore matches 1.. run scoreboard players add @s ec.sp_obj_done 1
