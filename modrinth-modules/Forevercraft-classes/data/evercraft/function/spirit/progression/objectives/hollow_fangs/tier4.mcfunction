# Hollow Fangs — Rare → Ornate (7 objectives) — Ability 1 (Shadow Step) Unlocks
# 12. Kill 2,000 mobs
execute if score @s ec.sp_kills matches 2000.. run scoreboard players add @s ec.sp_obj_done 1
# 13. Use Shadow Step 50 times
execute if score @s ec.sp_ability1_uses matches 50.. run scoreboard players add @s ec.sp_obj_done 1
# 14. Kill 500 mobs while stealthed
execute if score @s ec.sp_stealth_kills matches 500.. run scoreboard players add @s ec.sp_obj_done 1
# 15. Complete dungeon floor 7
execute if score @s ec.sp_floor_max matches 7.. run scoreboard players add @s ec.sp_obj_done 1
# 16. Reach Castle floor 10
execute if score @s ic.record matches 10.. run scoreboard players add @s ec.sp_obj_done 1
# 17. Complete 10 quests
execute if score @s ec.sp_quests_done matches 10.. run scoreboard players add @s ec.sp_obj_done 1
# 18. Prestige the Stealth advantage tree
execute if score @s adv.pres_stea matches 1.. run scoreboard players add @s ec.sp_obj_done 1