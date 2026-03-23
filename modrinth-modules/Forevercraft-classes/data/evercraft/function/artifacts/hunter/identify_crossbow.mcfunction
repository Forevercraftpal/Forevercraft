# Identify which hunter crossbow the player is holding
scoreboard players set @s ec.ht_bow_id 0
execute if items entity @s weapon.mainhand crossbow[custom_data~{hunter_id:"windrunner"}] run scoreboard players set @s ec.ht_bow_id 1
execute if items entity @s weapon.mainhand crossbow[custom_data~{hunter_id:"air_strike"}] run scoreboard players set @s ec.ht_bow_id 2
execute if items entity @s weapon.mainhand crossbow[custom_data~{hunter_id:"acacia_ballista"}] run scoreboard players set @s ec.ht_bow_id 3
execute if items entity @s weapon.mainhand crossbow[custom_data~{hunter_id:"venomfang_crossbow"}] run scoreboard players set @s ec.ht_bow_id 4
execute if items entity @s weapon.mainhand crossbow[custom_data~{hunter_id:"echo_shot"}] run scoreboard players set @s ec.ht_bow_id 5
execute if items entity @s weapon.mainhand crossbow[custom_data~{hunter_id:"awper_hand"}] run scoreboard players set @s ec.ht_bow_id 6
