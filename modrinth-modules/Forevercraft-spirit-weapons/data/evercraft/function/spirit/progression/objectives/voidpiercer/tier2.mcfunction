# Voidpiercer — Common → Uncommon (5 objectives)
# 1. Kill 100 mobs
execute if score @s ec.sp_kills matches 100.. run scoreboard players add @s ec.sp_obj_done 1
# 2. Kill 25 mobs at 20+ block range
execute if score @s ec.sp_range_kills matches 25.. run scoreboard players add @s ec.sp_obj_done 1
# 3. Visit the End dimension (tracked by biome visits)
execute if score @s ec.sp_biomes matches 1.. run scoreboard players add @s ec.sp_obj_done 1
# 4. Complete 1 dungeon run
execute if score @s ec.sp_dungeon_runs matches 1.. run scoreboard players add @s ec.sp_obj_done 1
# 5. Catch 10 fish
execute if score @s ach.fish_caught matches 10.. run scoreboard players add @s ec.sp_obj_done 1