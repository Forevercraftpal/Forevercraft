# Dragonheart Sword — Common → Uncommon (5 objectives)
# 1. Kill 100 mobs
execute if score @s ec.sp_kills matches 100.. run scoreboard players add @s ec.sp_obj_done 1
# 2. Block 50 attacks with shield
execute if score @s ec.sp_shield_block matches 50.. run scoreboard players add @s ec.sp_obj_done 1
# 3. Visit 5 biomes
execute if score @s ec.sp_biomes matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 4. Complete 1 dungeon run
execute if score @s ec.sp_dungeon_runs matches 1.. run scoreboard players add @s ec.sp_obj_done 1
# 5. Survive 10 minutes in combat
execute if score @s ec.sp_survive matches 10.. run scoreboard players add @s ec.sp_obj_done 1
