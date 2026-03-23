# Hollow Fangs — Ornate → Exquisite (8 objectives)
# 19. Kill 5,000 mobs
execute if score @s ec.sp_kills matches 5000.. run scoreboard players add @s ec.sp_obj_done 1
# 20. Use Shadow Step 200 times
execute if score @s ec.sp_ability1_uses matches 200.. run scoreboard players add @s ec.sp_obj_done 1
# 21. Kill 2,000 mobs while stealthed
execute if score @s ec.sp_stealth_kills matches 2000.. run scoreboard players add @s ec.sp_obj_done 1
# 22. Complete 50 dungeon floors total
execute if score @s ec.sp_total_floors matches 50.. run scoreboard players add @s ec.sp_obj_done 1
# 23. Reach Castle floor 20
execute if score @s ic.record matches 20.. run scoreboard players add @s ec.sp_obj_done 1
# 24. Bind 5 runes at the Glyphforge
execute if score @s ach.runes_forged matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 25. Kill 3 raid bosses
execute if score @s ec.sp_bosses_killed matches 3.. run scoreboard players add @s ec.sp_obj_done 1
# 26. Achieve a 20-kill streak without taking damage
execute if score @s ec.sp_kill_streak matches 20.. run scoreboard players add @s ec.sp_obj_done 1