# Armored Elytra Merge — Titan
# Runs as the elytra item entity. Chestplate is nearby.

data modify storage evercraft:armored_elytra elytra_enchants set from entity @s Item.components."minecraft:enchantments"
data modify storage evercraft:armored_elytra chest_enchants set from entity @e[type=item,distance=..2,nbt={Item:{components:{"minecraft:custom_data":{artifact:"titan_chestplate"}}}},limit=1,sort=nearest] Item.components."minecraft:enchantments"

data remove storage evercraft:armored_elytra trim
data modify storage evercraft:armored_elytra trim set from entity @e[type=item,distance=..2,nbt={Item:{components:{"minecraft:custom_data":{artifact:"titan_chestplate"}}}},limit=1,sort=nearest] Item.components."minecraft:trim"

kill @e[type=item,distance=..2,nbt={Item:{components:{"minecraft:custom_data":{artifact:"titan_chestplate"}}}}]

loot spawn ~ ~1 ~ loot evercraft:armored_elytra/titan
kill @s

# Sacrifice the beacon
execute if block ~ ~ ~ beacon run setblock ~ ~ ~ air
execute if block ~ ~-1 ~ beacon run setblock ~ ~-1 ~ air

function evercraft:armored_elytra/effects

tellraw @a[distance=..64] [{text:"[",color:"dark_gray"},{text:"Forevercraft",color:"gold",bold:true},{text:"] ",color:"dark_gray"},{text:"A ",color:"gray"},{text:"Titan's Shroud Chestplate",color:"gold"},{text:" and ",color:"gray"},{text:"Downpour Elytra",color:"gold"},{text:" have been fused into ",color:"gray"},{text:"Armored Downpour Elytra",color:"gold",bold:true},{text:"!",color:"gray"}]

# Track for achievements
execute as @p run scoreboard players add @s ach.elytra_merges 1
