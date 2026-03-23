# Lifewoven Branch — Uncommon → Rare (6 objectives)
# 1. Kill 500 mobs
execute if score @s ec.sp_kills matches 500.. run scoreboard players add @s ec.sp_obj_done 1
# 2. Heal 2,000 HP in combat
execute if score @s ec.sp_combat_heals matches 2000.. run scoreboard players add @s ec.sp_obj_done 1
# 3. Complete dungeon floor 5
execute if score @s ec.sp_floor_max matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 4. Heal allies for 500 HP
execute if score @s ec.sp_ally_heals matches 500.. run scoreboard players add @s ec.sp_obj_done 1
# 5. Reach Vitality level 5
execute if score @s adv.vitality matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 6. Revive 1 player
execute if score @s ec.sp_revives matches 1.. run scoreboard players add @s ec.sp_obj_done 1
