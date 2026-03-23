# Hollow Fangs — Common → Uncommon (5 objectives)
# 1. Kill 100 mobs with Hollow Fangs equipped
execute if score @s ec.sp_kills matches 100.. run scoreboard players add @s ec.sp_obj_done 1
# 2. Land 25 backstab kills (kill while Invisible)
execute if score @s ec.sp_stealth_kills matches 25.. run scoreboard players add @s ec.sp_obj_done 1
# 3. Visit 5 different biomes with the weapon
execute if score @s ec.sp_biomes matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 4. Complete 1 dungeon run
execute if score @s ec.sp_dungeon_runs matches 1.. run scoreboard players add @s ec.sp_obj_done 1
# 5. Survive 10 minutes in combat without dying
execute if score @s ec.sp_survive matches 10.. run scoreboard players add @s ec.sp_obj_done 1