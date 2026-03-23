# Voidpiercer — Rare → Ornate (7 objectives) — Ability 1 (Rift Bolt) Unlocks
# 12. Kill 2,000 mobs
execute if score @s ec.sp_kills matches 2000.. run scoreboard players add @s ec.sp_obj_done 1
# 13. Kill 500 mobs at 30+ block range
execute if score @s ec.sp_range_kills matches 500.. run scoreboard players add @s ec.sp_obj_done 1
# 14. Use Rift Bolt 50 times
execute if score @s ec.sp_ability1_uses matches 50.. run scoreboard players add @s ec.sp_obj_done 1
# 15. Complete dungeon floor 7
execute if score @s ec.sp_floor_max matches 7.. run scoreboard players add @s ec.sp_obj_done 1
# 16. Reach Castle floor 10
execute if score @s ic.record matches 10.. run scoreboard players add @s ec.sp_obj_done 1
# 17. Kill 200 endermen
execute if score @s ec.sp_enderman_kills matches 200.. run scoreboard players add @s ec.sp_obj_done 1
# 18. Complete 10 quests
execute if score @s ec.sp_quests_done matches 10.. run scoreboard players add @s ec.sp_obj_done 1