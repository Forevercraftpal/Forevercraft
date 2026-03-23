# Lifewoven Branch — Mythical → Spirit (10 objectives)
# 1. Kill 50,000 mobs
execute if score @s ec.sp_kills matches 50000.. run scoreboard players add @s ec.sp_obj_done 1
# 2. Heal 200,000 HP in combat
execute if score @s ec.sp_combat_heals matches 200000.. run scoreboard players add @s ec.sp_obj_done 1
# 3. Complete all 14 raid bosses
execute if score @s ec.sp_all_bosses matches 1.. run scoreboard players add @s ec.sp_obj_done 1
# 4. Reach Castle floor 50
execute if score @s ic.record matches 50.. run scoreboard players add @s ec.sp_obj_done 1
# 5. Max mastery
execute if score @s ec.sp_mastery matches 100000.. run scoreboard players add @s ec.sp_obj_done 1
# 6. Fill all glyphs at Exquisite
execute if score @s ec.sp_glyphs_exq matches 1.. run scoreboard players add @s ec.sp_obj_done 1
# 7. Heal allies for 25,000 HP
execute if score @s ec.sp_ally_heals matches 25000.. run scoreboard players add @s ec.sp_obj_done 1
# 8. Revive 20 players
execute if score @s ec.sp_revives matches 20.. run scoreboard players add @s ec.sp_obj_done 1
# 9. Reach Spirit Tome page 50
execute if score @s ec.sq_part matches 50.. run scoreboard players add @s ec.sp_obj_done 1
# 10. Survive 60 minutes in combat
execute if score @s ec.sp_survive matches 60.. run scoreboard players add @s ec.sp_obj_done 1
