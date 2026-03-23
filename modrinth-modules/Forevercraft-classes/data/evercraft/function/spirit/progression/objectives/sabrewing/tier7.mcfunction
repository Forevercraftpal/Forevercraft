# Sabrewing — Mythical → Spirit (10 objectives)
# 1. Kill 50,000 mobs
execute if score @s ec.sp_kills matches 50000.. run scoreboard players add @s ec.sp_obj_done 1
# 2. Land 15,000 critical shots
execute if score @s ec.sp_crits matches 15000.. run scoreboard players add @s ec.sp_obj_done 1
# 3. Complete all 14 raid bosses
execute if score @s ec.sp_all_bosses matches 1.. run scoreboard players add @s ec.sp_obj_done 1
# 4. Reach Castle floor 50
execute if score @s ic.record matches 50.. run scoreboard players add @s ec.sp_obj_done 1
# 5. Max mastery
execute if score @s ec.sp_mastery matches 100000.. run scoreboard players add @s ec.sp_obj_done 1
# 6. Fill all glyphs at Exquisite
execute if score @s ec.sp_glyphs_exq matches 1.. run scoreboard players add @s ec.sp_obj_done 1
# 7. Get 500 snipe kills at 50+ blocks
execute if score @s ec.sp_snipe_kills matches 500.. run scoreboard players add @s ec.sp_obj_done 1
# 8. Get 5,000 ranged kills
execute if score @s ec.sp_range_kills matches 5000.. run scoreboard players add @s ec.sp_obj_done 1
# 9. Reach Spirit Tome page 50
execute if score @s ec.sq_part matches 50.. run scoreboard players add @s ec.sp_obj_done 1
# 10. Reach a 50-kill streak
execute if score @s ec.sp_kill_streak matches 50.. run scoreboard players add @s ec.sp_obj_done 1
