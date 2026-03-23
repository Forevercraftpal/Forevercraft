# Archer Bow — Identify which archer bow is in mainhand
# Sets ec.ar_bow_id (1-13) based on custom_data archer_id

scoreboard players set @s ec.ar_bow_id 0
execute if items entity @s weapon.mainhand bow[custom_data~{archer_id:"hunting_bow"}] run scoreboard players set @s ec.ar_bow_id 1
execute if items entity @s weapon.mainhand bow[custom_data~{archer_id:"mechanical_shortbow"}] run scoreboard players set @s ec.ar_bow_id 2
execute if items entity @s weapon.mainhand bow[custom_data~{archer_id:"battle_bow"}] run scoreboard players set @s ec.ar_bow_id 3
execute if items entity @s weapon.mainhand bow[custom_data~{archer_id:"longbow"}] run scoreboard players set @s ec.ar_bow_id 4
execute if items entity @s weapon.mainhand bow[custom_data~{archer_id:"frostbite_bow"}] run scoreboard players set @s ec.ar_bow_id 5
execute if items entity @s weapon.mainhand bow[custom_data~{archer_id:"stormcaller_bow"}] run scoreboard players set @s ec.ar_bow_id 6
execute if items entity @s weapon.mainhand bow[custom_data~{archer_id:"ancient_bow"}] run scoreboard players set @s ec.ar_bow_id 7
execute if items entity @s weapon.mainhand bow[custom_data~{archer_id:"arm_cannon"}] run scoreboard players set @s ec.ar_bow_id 8
execute if items entity @s weapon.mainhand bow[custom_data~{archer_id:"sabrewing"}] run scoreboard players set @s ec.ar_bow_id 9
execute if items entity @s weapon.mainhand bow[custom_data~{archer_id:"call_of_the_void"}] run scoreboard players set @s ec.ar_bow_id 10
execute if items entity @s weapon.mainhand bow[custom_data~{archer_id:"hunters_promise"}] run scoreboard players set @s ec.ar_bow_id 11
execute if items entity @s weapon.mainhand bow[custom_data~{archer_id:"gaster_blaster"}] run scoreboard players set @s ec.ar_bow_id 12
execute if items entity @s weapon.mainhand bow[custom_data~{archer_id:"soulstring"}] run scoreboard players set @s ec.ar_bow_id 13
