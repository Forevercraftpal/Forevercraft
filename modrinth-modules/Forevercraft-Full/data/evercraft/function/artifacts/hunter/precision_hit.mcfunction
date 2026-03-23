# Hunter — Precision Shot Hit
# Reset charged state
scoreboard players set @s ec.ht_charged 0
scoreboard players set @s ec.ht_hit_timer -1
scoreboard players set @s ec.ht_aim 0

# Dispatch by crossbow ID
execute if score @s ec.ht_bow_id matches 1 run function evercraft:artifacts/hunter/precision/rapid_crossbow
execute if score @s ec.ht_bow_id matches 2 run function evercraft:artifacts/hunter/precision/firebolt_thrower
execute if score @s ec.ht_bow_id matches 3 run function evercraft:artifacts/hunter/precision/acacia_ballista
execute if score @s ec.ht_bow_id matches 4 run function evercraft:artifacts/hunter/precision/corrupted_crossbow
execute if score @s ec.ht_bow_id matches 5 run function evercraft:artifacts/hunter/precision/echo_shot
execute if score @s ec.ht_bow_id matches 6 run function evercraft:artifacts/hunter/precision/voidcaller

# Set cooldown per crossbow
# 1:Rapid=6s 2:Firebolt=10s 3:Ballista=15s 4:Corrupted=20s 5:Echo=25s 6:Void=40s
execute if score @s ec.ht_bow_id matches 1 run scoreboard players set @s ec.ht_cd 6
execute if score @s ec.ht_bow_id matches 2 run scoreboard players set @s ec.ht_cd 10
execute if score @s ec.ht_bow_id matches 3 run scoreboard players set @s ec.ht_cd 15
execute if score @s ec.ht_bow_id matches 4 run scoreboard players set @s ec.ht_cd 20
execute if score @s ec.ht_bow_id matches 5 run scoreboard players set @s ec.ht_cd 25
execute if score @s ec.ht_bow_id matches 6 run scoreboard players set @s ec.ht_cd 40
