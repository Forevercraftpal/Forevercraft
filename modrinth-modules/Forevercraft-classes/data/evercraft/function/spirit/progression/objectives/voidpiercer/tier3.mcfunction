# Voidpiercer — Uncommon → Rare (6 objectives)
# 6. Kill 500 mobs
execute if score @s ec.sp_kills matches 500.. run scoreboard players add @s ec.sp_obj_done 1
# 7. Kill 100 mobs at 30+ block range
execute if score @s ec.sp_range_kills matches 100.. run scoreboard players add @s ec.sp_obj_done 1
# 8. Complete dungeon floor 5
execute if score @s ec.sp_floor_max matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 9. Kill 50 endermen
execute if score @s ec.sp_enderman_kills matches 50.. run scoreboard players add @s ec.sp_obj_done 1
# 10. Reach advantage level 5 in Dexterity
execute if score @s adv.dexterity matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 11. Land 3 kills in 5 seconds from range
execute if score @s ec.sp_rapid_snipe matches 1.. run scoreboard players add @s ec.sp_obj_done 1