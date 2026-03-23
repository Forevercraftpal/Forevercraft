# Thornmaw — Ornate → Exquisite (8 objectives)
# 1. Kill 5,000 mobs
execute if score @s ec.sp_kills matches 5000.. run scoreboard players add @s ec.sp_obj_done 1
# 2. Use ability 200 times
execute if score @s ec.sp_ability1_uses matches 200.. run scoreboard players add @s ec.sp_obj_done 1
# 3. Discover 50 pets
execute if score @s ec.sp_pets_found matches 50.. run scoreboard players add @s ec.sp_obj_done 1
# 4. Complete 50 dungeon floors
execute if score @s ec.sp_total_floors matches 50.. run scoreboard players add @s ec.sp_obj_done 1
# 5. Reach Castle floor 20
execute if score @s ic.record matches 20.. run scoreboard players add @s ec.sp_obj_done 1
# 6. Bind 5 runes
execute if score @s ach.runes_forged matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 7. Kill 3 raid bosses
execute if score @s ec.sp_bosses_killed matches 3.. run scoreboard players add @s ec.sp_obj_done 1
# 8. Forge 5 eternal bonds
execute if score @s ec.sp_bonds matches 5.. run scoreboard players add @s ec.sp_obj_done 1
