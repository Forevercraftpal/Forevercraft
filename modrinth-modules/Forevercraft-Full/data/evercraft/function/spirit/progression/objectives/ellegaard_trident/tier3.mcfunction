# Ellegaard Trident — Uncommon → Rare (6 objectives)
# 1. Kill 500 mobs
execute if score @s ec.sp_kills matches 500.. run scoreboard players add @s ec.sp_obj_done 1
# 2. Get 100 thrown kills
execute if score @s ec.sp_thrown_kills matches 100.. run scoreboard players add @s ec.sp_obj_done 1
# 3. Complete dungeon floor 5
execute if score @s ec.sp_floor_max matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 4. Explore 3 ocean structures
execute if score @s ec.sp_ocean_explore matches 3.. run scoreboard players add @s ec.sp_obj_done 1
# 5. Reach Explorer level 5
execute if score @s adv.explorer matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 6. Survive 10 minutes in combat
execute if score @s ec.sp_survive matches 10.. run scoreboard players add @s ec.sp_obj_done 1
