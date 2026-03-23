# Hollow Fangs — Mythical → Spirit (10 objectives) — Twin/Boost Unlocked
# 36. Kill 50,000 mobs
execute if score @s ec.sp_kills matches 50000.. run scoreboard players add @s ec.sp_obj_done 1
# 37. Kill 10,000 mobs while stealthed
execute if score @s ec.sp_stealth_kills matches 10000.. run scoreboard players add @s ec.sp_obj_done 1
# 38. Complete all 14 raid bosses
execute if score @s ec.sp_all_bosses matches 1.. run scoreboard players add @s ec.sp_obj_done 1
# 39. Reach Castle floor 50
execute if score @s ic.record matches 50.. run scoreboard players add @s ec.sp_obj_done 1
# 40. Max mastery
execute if score @s ec.sp_mastery matches 100000.. run scoreboard players add @s ec.sp_obj_done 1
# 41. Fill all glyph slots at Exquisite
execute if score @s ec.sp_glyphs_exq matches 1.. run scoreboard players add @s ec.sp_obj_done 1
# 42. Solo the Hollow Sovereign
execute if score @s ec.sp_solo_hollow matches 1.. run scoreboard players add @s ec.sp_obj_done 1
# 43. Complete 100 dungeon floors
execute if score @s ec.sp_total_floors matches 100.. run scoreboard players add @s ec.sp_obj_done 1
# 44. Reach Spirit Tome quest page 50
execute if score @s ec.sq_part matches 50.. run scoreboard players add @s ec.sp_obj_done 1
# 45. Achieve 50-kill streak without taking damage
execute if score @s ec.sp_kill_streak matches 50.. run scoreboard players add @s ec.sp_obj_done 1