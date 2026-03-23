# Set Ancient Netherite Core to Level 1
# Update the item in the item frame

data modify entity @s Item.components.minecraft:custom_data.level set value 1

# Visual feedback
particle minecraft:soul ~ ~0.5 ~ 0.3 0.3 0.3 0.02 20
playsound minecraft:block.beacon.activate block @a[distance=..10] ~ ~ ~ 1 1.2

# Update lore
item modify entity @s container.0 evercraft:netherite_core/level_1

tellraw @a[distance=..10] ["",{text:"Ancient Netherite Core ",color:"dark_purple",bold:true},{text:"upgraded to ",color:"gray"},{text:"Level 1",color:"gold"},{text:" (9 Netherite Blocks)",color:"dark_gray"}]
