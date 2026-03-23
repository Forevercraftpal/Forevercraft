# Ashcrown Mace — Mythical → Spirit (10 objectives)
# 1. Kill 50,000 mobs
execute if score @s ec.sp_kills matches 50000.. run scoreboard players add @s ec.sp_obj_done 1
# 2. Block 200,000 damage
execute if score @s ec.sp_damage_blocked matches 200000.. run scoreboard players add @s ec.sp_obj_done 1
# 3. Complete all 14 raid bosses
execute if score @s ec.sp_all_bosses matches 1.. run scoreboard players add @s ec.sp_obj_done 1
# 4. Reach Castle floor 50
execute if score @s ic.record matches 50.. run scoreboard players add @s ec.sp_obj_done 1
# 5. Max mastery
execute if score @s ec.sp_mastery matches 100000.. run scoreboard players add @s ec.sp_obj_done 1
# 6. Fill all glyphs at Exquisite
execute if score @s ec.sp_glyphs_exq matches 1.. run scoreboard players add @s ec.sp_obj_done 1
# 7. Protect allies from 10,000 damage
execute if score @s ec.sp_ally_protect matches 10000.. run scoreboard players add @s ec.sp_obj_done 1
# 8. Complete 100 dungeon floors
execute if score @s ec.sp_total_floors matches 100.. run scoreboard players add @s ec.sp_obj_done 1
# 9. Reach Spirit Tome page 50
execute if score @s ec.sq_part matches 50.. run scoreboard players add @s ec.sp_obj_done 1
# 10. Use 10 different sentinel abilities
execute if score @s ec.sp_sentinel_variety matches 10.. run scoreboard players add @s ec.sp_obj_done 1
