# Voidpiercer — Mythical → Spirit (10 objectives)
# 36. Kill 50,000 mobs
execute if score @s ec.sp_kills matches 50000.. run scoreboard players add @s ec.sp_obj_done 1
# 37. Kill 10,000 mobs at 30+ block range
execute if score @s ec.sp_range_kills matches 10000.. run scoreboard players add @s ec.sp_obj_done 1
# 38. Complete all 14 raid bosses
execute if score @s ec.sp_all_bosses matches 1.. run scoreboard players add @s ec.sp_obj_done 1
# 39. Reach Castle floor 50
execute if score @s ic.record matches 50.. run scoreboard players add @s ec.sp_obj_done 1
# 40. Max mastery
execute if score @s ec.sp_mastery matches 100000.. run scoreboard players add @s ec.sp_obj_done 1
# 41. Fill all glyph slots at Exquisite
execute if score @s ec.sp_glyphs_exq matches 1.. run scoreboard players add @s ec.sp_obj_done 1
# 42. Kill 3 different raid bosses with only ranged attacks
execute if score @s ec.sp_ranged_boss matches 3.. run scoreboard players add @s ec.sp_obj_done 1
# 43. Reach Spirit Tome quest page 50
execute if score @s ec.sq_part matches 50.. run scoreboard players add @s ec.sp_obj_done 1
# 44. Complete all advantage prestiges
execute if score @s ec.sp_all_prestige matches 1.. run scoreboard players add @s ec.sp_obj_done 1
# 45. Land 500 kills from 50+ blocks
execute if score @s ec.sp_snipe_kills matches 500.. run scoreboard players add @s ec.sp_obj_done 1