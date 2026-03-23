# Set primary effect to Haste (2)
execute unless items entity @s weapon.mainhand minecraft:stick[custom_data~{ancient_netherite_core:1b}] run return 0
# Hopper minecart intermediary (SelectedItem is read-only in 1.21.5+)
execute at @s run summon hopper_minecart ~ ~-2 ~ {Tags:["ec.temp_cart"],TransferCooldown:2147483647}
item replace entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1] container.0 from entity @s weapon.mainhand
data modify entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1] Items[0].components."minecraft:custom_data" merge value {ancient_netherite_core:1b,primary:2}
item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1] container.0
data modify entity @e[type=hopper_minecart,tag=ec.temp_cart,limit=1] Items set value []
kill @e[type=hopper_minecart,tag=ec.temp_cart]
tellraw @s ["",{text:"Primary effect set to ",color:"gray"},{text:"Haste",color:"yellow",bold:true}]
playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 1.2
