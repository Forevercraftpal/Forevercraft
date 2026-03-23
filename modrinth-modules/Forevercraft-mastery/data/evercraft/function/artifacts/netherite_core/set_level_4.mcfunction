# Set Ancient Netherite Core to Level 4 - Maximum Power
data modify entity @s Item.components.minecraft:custom_data.level set value 4

particle minecraft:soul ~ ~0.5 ~ 0.4 0.4 0.4 0.02 50
particle minecraft:reverse_portal ~ ~0.5 ~ 0.4 0.4 0.4 0.1 35
particle minecraft:dragon_breath ~ ~0.5 ~ 0.3 0.3 0.3 0.03 20
particle minecraft:end_rod ~ ~1 ~ 0.5 0.5 0.5 0.05 30
playsound minecraft:block.beacon.activate block @a[distance=..10] ~ ~ ~ 1 0.6
playsound minecraft:entity.wither.spawn block @a[distance=..10] ~ ~ ~ 0.5 1.5

item modify entity @s container.0 evercraft:netherite_core/level_4

tellraw @a[distance=..10] ["",{text:"Ancient Netherite Core ",color:"dark_purple",bold:true},{text:"upgraded to ",color:"gray"},{text:"MAXIMUM LEVEL",color:"light_purple",bold:true},{text:" (244 Netherite Blocks)",color:"dark_gray"}]
