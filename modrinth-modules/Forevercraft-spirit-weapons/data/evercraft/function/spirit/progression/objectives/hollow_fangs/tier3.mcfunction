# Hollow Fangs — Uncommon → Rare (6 objectives)
# 6. Kill 500 mobs
execute if score @s ec.sp_kills matches 500.. run scoreboard players add @s ec.sp_obj_done 1
# 7. Land 100 backstab kills
execute if score @s ec.sp_stealth_kills matches 100.. run scoreboard players add @s ec.sp_obj_done 1
# 8. Complete dungeon floor 5
execute if score @s ec.sp_floor_max matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 9. Kill 3 different mob types in a single combo (10 seconds)
execute if score @s ec.sp_combo_variety matches 3.. run scoreboard players add @s ec.sp_obj_done 1
# 10. Reach advantage level 5 in Stealth
execute if score @s adv.stealth matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 11. Kill a mob from full stealth without taking damage
execute if score @s ec.sp_perfect_stealth matches 1.. run scoreboard players add @s ec.sp_obj_done 1