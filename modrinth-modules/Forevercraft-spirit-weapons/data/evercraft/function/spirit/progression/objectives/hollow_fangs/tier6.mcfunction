# Hollow Fangs — Exquisite → Mythical (9 objectives) — Ability 2 (Thousand Cuts) Unlocks
# 27. Kill 15,000 mobs
execute if score @s ec.sp_kills matches 15000.. run scoreboard players add @s ec.sp_obj_done 1
# 28. Use Shadow Step 500 times
execute if score @s ec.sp_ability1_uses matches 500.. run scoreboard players add @s ec.sp_obj_done 1
# 29. Kill 5,000 mobs while stealthed
execute if score @s ec.sp_stealth_kills matches 5000.. run scoreboard players add @s ec.sp_obj_done 1
# 30. Complete 100 dungeon floors
execute if score @s ec.sp_total_floors matches 100.. run scoreboard players add @s ec.sp_obj_done 1
# 31. Reach Castle floor 30
execute if score @s ic.record matches 30.. run scoreboard players add @s ec.sp_obj_done 1
# 32. Fill all glyph slots
execute if score @s ec.sp_glyphs_full matches 1.. run scoreboard players add @s ec.sp_obj_done 1
# 33. Kill 8 raid bosses
execute if score @s ec.sp_bosses_killed matches 8.. run scoreboard players add @s ec.sp_obj_done 1
# 34. Solo a raid boss
execute if score @s ec.sp_solo_boss matches 1.. run scoreboard players add @s ec.sp_obj_done 1
# 35. Complete 50 quests
execute if score @s ec.sp_quests_done matches 50.. run scoreboard players add @s ec.sp_obj_done 1