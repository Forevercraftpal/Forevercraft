# Set Ancient Netherite Core to Level 3
data modify entity @s Item.components.minecraft:custom_data.level set value 3

particle minecraft:soul ~ ~0.5 ~ 0.3 0.3 0.3 0.02 40
particle minecraft:reverse_portal ~ ~0.5 ~ 0.3 0.3 0.3 0.08 25
particle minecraft:dragon_breath ~ ~0.5 ~ 0.2 0.2 0.2 0.02 10
playsound minecraft:block.beacon.activate block @a[distance=..10] ~ ~ ~ 1 0.8

item modify entity @s container.0 evercraft:netherite_core/level_3

tellraw @a[distance=..10] ["",{text:"Ancient Netherite Core ",color:"dark_purple",bold:true},{text:"upgraded to ",color:"gray"},{text:"Level 3",color:"gold"},{text:" (134 Netherite Blocks)",color:"dark_gray"}]
