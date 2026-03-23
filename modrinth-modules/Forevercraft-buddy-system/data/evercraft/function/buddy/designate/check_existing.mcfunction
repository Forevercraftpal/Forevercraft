# Buddy Designation — Check if player already has a buddy of this mob type
# @s = player, ec.bd_confirm_target tagged on the mob
# Sets #bd_already ec.temp to 1 if duplicate, 0 if clear

scoreboard players set #bd_already ec.temp 0

# Determine the mob type ID
scoreboard players set #bd_check_type ec.temp 0
execute if entity @e[type=minecraft:wolf,tag=ec.bd_confirm_target,limit=1] run scoreboard players set #bd_check_type ec.temp 1
execute if entity @e[type=minecraft:cat,tag=ec.bd_confirm_target,limit=1] run scoreboard players set #bd_check_type ec.temp 2
execute if entity @e[type=minecraft:parrot,tag=ec.bd_confirm_target,limit=1] run scoreboard players set #bd_check_type ec.temp 3
execute if entity @e[type=minecraft:horse,tag=ec.bd_confirm_target,limit=1] run scoreboard players set #bd_check_type ec.temp 4
execute if entity @e[type=minecraft:donkey,tag=ec.bd_confirm_target,limit=1] run scoreboard players set #bd_check_type ec.temp 5
execute if entity @e[type=minecraft:mule,tag=ec.bd_confirm_target,limit=1] run scoreboard players set #bd_check_type ec.temp 6
execute if entity @e[type=minecraft:llama,tag=ec.bd_confirm_target,limit=1] run scoreboard players set #bd_check_type ec.temp 7
execute if entity @e[type=minecraft:trader_llama,tag=ec.bd_confirm_target,limit=1] run scoreboard players set #bd_check_type ec.temp 8
execute if entity @e[type=minecraft:camel,tag=ec.bd_confirm_target,limit=1] run scoreboard players set #bd_check_type ec.temp 9
execute if entity @e[type=minecraft:fox,tag=ec.bd_confirm_target,limit=1] run scoreboard players set #bd_check_type ec.temp 10
execute if entity @e[type=minecraft:ocelot,tag=ec.bd_confirm_target,limit=1] run scoreboard players set #bd_check_type ec.temp 11
execute if entity @e[type=minecraft:happy_ghast,tag=ec.bd_confirm_target,limit=1] run scoreboard players set #bd_check_type ec.temp 12

# Check if player's current buddy type matches
execute if score @s ec.bd_type_id = #bd_check_type ec.temp if score @s ec.bd_type_id matches 1.. run scoreboard players set #bd_already ec.temp 1
execute if score #bd_already ec.temp matches 1 run tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"You already have a Buddy of this type! Release your current one first.",color:"red"}]
