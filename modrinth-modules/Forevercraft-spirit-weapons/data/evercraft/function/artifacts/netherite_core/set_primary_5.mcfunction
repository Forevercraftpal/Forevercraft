# Set primary effect to Strength (5) - Requires Level 3+
execute unless items entity @s weapon.mainhand minecraft:stick[custom_data~{ancient_netherite_core:1b}] run return 0
execute unless items entity @s weapon.mainhand minecraft:stick[custom_data~{level:3b}] unless items entity @s weapon.mainhand minecraft:stick[custom_data~{level:4b}] run tellraw @s ["",{text:"Requires Level 3 or higher!",color:"red"}]
execute unless items entity @s weapon.mainhand minecraft:stick[custom_data~{level:3b}] unless items entity @s weapon.mainhand minecraft:stick[custom_data~{level:4b}] run return 0
# Hopper minecart intermediary (SelectedItem is read-only in 1.21.5+)
execute at @s run summon hopper_minecart ~ ~-2 ~ {Tags:["ec.temp_cart"],TransferCooldown:2147483647}
item replace entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1] container.0 from entity @s weapon.mainhand
data modify entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1] Items[0].components."minecraft:custom_data" merge value {ancient_netherite_core:1b,primary:5}
item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1] container.0
data modify entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1] Items set value []
kill @e[type=hopper_minecart,tag=ec.temp_cart]
tellraw @s ["",{text:"Primary effect set to ",color:"gray"},{text:"Strength",color:"red",bold:true}]
playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 1.2
