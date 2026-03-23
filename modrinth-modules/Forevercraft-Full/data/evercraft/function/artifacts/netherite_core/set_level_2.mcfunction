# Set Ancient Netherite Core to Level 2
data modify entity @s Item.components.minecraft:custom_data.level set value 2

particle minecraft:soul ~ ~0.5 ~ 0.3 0.3 0.3 0.02 30
particle minecraft:reverse_portal ~ ~0.5 ~ 0.2 0.2 0.2 0.05 15
playsound minecraft:block.beacon.activate block @a[distance=..10] ~ ~ ~ 1 1.0

item modify entity @s container.0 evercraft:netherite_core/level_2

tellraw @a[distance=..10] ["",{text:"Ancient Netherite Core ",color:"dark_purple",bold:true},{text:"upgraded to ",color:"gray"},{text:"Level 2",color:"gold"},{text:" (34 Netherite Blocks)",color:"dark_gray"}]
