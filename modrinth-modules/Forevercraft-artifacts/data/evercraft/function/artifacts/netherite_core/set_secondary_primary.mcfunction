# Set secondary to upgrade primary effect to II - Requires Level 4
execute unless items entity @s weapon.mainhand minecraft:stick[custom_data~{ancient_netherite_core:1b}] run return 0
execute unless items entity @s weapon.mainhand minecraft:stick[custom_data~{level:4b}] run tellraw @s ["",{text:"Requires Level 4!",color:"red"}]
execute unless items entity @s weapon.mainhand minecraft:stick[custom_data~{level:4b}] run return 0

# Get current primary (SelectedItem read is still valid)
execute store result score #temp anc.primary run data get entity @s SelectedItem.components."minecraft:custom_data".primary

# Hopper minecart intermediary (SelectedItem is read-only in 1.21.5+)
execute at @s run summon hopper_minecart ~ ~-2 ~ {Tags:["ec.temp_cart"],TransferCooldown:2147483647}
item replace entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1] container.0 from entity @s weapon.mainhand
execute if score #temp anc.primary matches 1 run data modify entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1] Items[0].components."minecraft:custom_data" merge value {ancient_netherite_core:1b,secondary:1}
execute if score #temp anc.primary matches 2 run data modify entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1] Items[0].components."minecraft:custom_data" merge value {ancient_netherite_core:1b,secondary:2}
execute if score #temp anc.primary matches 3 run data modify entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1] Items[0].components."minecraft:custom_data" merge value {ancient_netherite_core:1b,secondary:3}
execute if score #temp anc.primary matches 4 run data modify entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1] Items[0].components."minecraft:custom_data" merge value {ancient_netherite_core:1b,secondary:4}
execute if score #temp anc.primary matches 5 run data modify entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1] Items[0].components."minecraft:custom_data" merge value {ancient_netherite_core:1b,secondary:5}
item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1] container.0
data modify entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1] Items set value []
kill @e[type=hopper_minecart,tag=ec.temp_cart]

tellraw @s ["",{text:"Secondary set to upgrade ",color:"gray"},{text:"Primary Effect to Level II",color:"gold",bold:true}]
playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 0.8
