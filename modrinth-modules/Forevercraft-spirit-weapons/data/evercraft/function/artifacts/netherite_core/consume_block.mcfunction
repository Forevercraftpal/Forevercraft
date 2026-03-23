# Ancient Netherite Core - Consume netherite blocks
# Called when player is sneaking + holding the core with netherite blocks in inventory

# Check if already max level
execute if items entity @s weapon.mainhand minecraft:stick[custom_data~{ancient_netherite_core:1b,level:4b}] run return run tellraw @s {text:"Your Ancient Netherite Core is already at maximum level!",color:"gold"}

# Show absorbing message on first block (when tag not yet set)
execute unless entity @s[tag=nc_absorbing] run tellraw @s [{text:"The ",color:"dark_purple"},{text:"Ancient Core",color:"gold",bold:true},{text:" begins absorbing materials from time and space...",color:"dark_purple"}]

# Consume one block and track progress
clear @s minecraft:netherite_block 1
scoreboard players add @s evercraft.nc_blocks 1

# Play consume sound and particle
playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 1.2
particle soul_fire_flame ~ ~1 ~ 0.3 0.3 0.3 0.02 5

# Check upgrade thresholds
execute if score @s evercraft.nc_blocks matches 9..33 unless items entity @s weapon.mainhand minecraft:stick[custom_data~{level:1b}] unless items entity @s weapon.mainhand minecraft:stick[custom_data~{level:2b}] unless items entity @s weapon.mainhand minecraft:stick[custom_data~{level:3b}] unless items entity @s weapon.mainhand minecraft:stick[custom_data~{level:4b}] run function evercraft:artifacts/netherite_core/upgrade_hand_to_1

execute if score @s evercraft.nc_blocks matches 34..99 unless items entity @s weapon.mainhand minecraft:stick[custom_data~{level:2b}] unless items entity @s weapon.mainhand minecraft:stick[custom_data~{level:3b}] unless items entity @s weapon.mainhand minecraft:stick[custom_data~{level:4b}] run function evercraft:artifacts/netherite_core/upgrade_hand_to_2

execute if score @s evercraft.nc_blocks matches 100..243 unless items entity @s weapon.mainhand minecraft:stick[custom_data~{level:3b}] unless items entity @s weapon.mainhand minecraft:stick[custom_data~{level:4b}] run function evercraft:artifacts/netherite_core/upgrade_hand_to_3

execute if score @s evercraft.nc_blocks matches 244.. unless items entity @s weapon.mainhand minecraft:stick[custom_data~{level:4b}] run function evercraft:artifacts/netherite_core/upgrade_hand_to_4

# Show progress actionbar based on score and level
execute unless items entity @s weapon.mainhand minecraft:stick[custom_data~{level:1b}] unless items entity @s weapon.mainhand minecraft:stick[custom_data~{level:2b}] unless items entity @s weapon.mainhand minecraft:stick[custom_data~{level:3b}] unless items entity @s weapon.mainhand minecraft:stick[custom_data~{level:4b}] run title @s actionbar [{text:"Awakening: ",color:"dark_purple"},{score:{name:"@s",objective:"evercraft.nc_blocks"},color:"gold"},{text:"/9 blocks",color:"gray"}]

execute if items entity @s weapon.mainhand minecraft:stick[custom_data~{level:1b}] run title @s actionbar [{text:"Level 2: ",color:"dark_purple"},{score:{name:"@s",objective:"evercraft.nc_blocks"},color:"gold"},{text:"/34 blocks",color:"gray"}]

execute if items entity @s weapon.mainhand minecraft:stick[custom_data~{level:2b}] run title @s actionbar [{text:"Level 3: ",color:"dark_purple"},{score:{name:"@s",objective:"evercraft.nc_blocks"},color:"gold"},{text:"/100 blocks",color:"gray"}]

execute if items entity @s weapon.mainhand minecraft:stick[custom_data~{level:3b}] run title @s actionbar [{text:"Level 4: ",color:"dark_purple"},{score:{name:"@s",objective:"evercraft.nc_blocks"},color:"gold"},{text:"/244 blocks",color:"gray"}]
