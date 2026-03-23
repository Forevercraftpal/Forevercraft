# Thornmaw — Uncommon → Rare (6 objectives)
# 1. Kill 500 mobs
execute if score @s ec.sp_kills matches 500.. run scoreboard players add @s ec.sp_obj_done 1
# 2. Discover 15 pets
execute if score @s ec.sp_pets_found matches 15.. run scoreboard players add @s ec.sp_obj_done 1
# 3. Complete dungeon floor 5
execute if score @s ec.sp_floor_max matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 4. Forge 1 eternal bond
execute if score @s ec.sp_bonds matches 1.. run scoreboard players add @s ec.sp_obj_done 1
# 5. Reach Beastmaster level 5
execute if score @s adv.beastmaster matches 5.. run scoreboard players add @s ec.sp_obj_done 1
# 6. Complete 5 quests
execute if score @s ec.sp_quests_done matches 5.. run scoreboard players add @s ec.sp_obj_done 1
