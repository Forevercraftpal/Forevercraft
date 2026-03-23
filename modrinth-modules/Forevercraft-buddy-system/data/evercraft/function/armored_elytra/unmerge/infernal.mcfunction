# Armored Elytra Unmerge — Infernal

data modify storage evercraft:armored_elytra merged_enchants set from entity @s Item.components."minecraft:enchantments"
data modify storage evercraft:armored_elytra merged_trim set from entity @s Item.components."minecraft:trim"

kill @s

loot spawn ~ ~1 ~ loot evercraft:artifacts/mythical/red_dragon_wings
loot spawn ~ ~1 ~ loot evercraft:artifacts/mythical/infernal_chestplate

function evercraft:armored_elytra/effects

tellraw @a[distance=..64] [{text:"[",color:"dark_gray"},{text:"Forevercraft",color:"gold",bold:true},{text:"] ",color:"dark_gray"},{text:"Armored Red Dragon Wings",color:"gold"},{text:" have been separated back into ",color:"gray"},{text:"Lava Warrior Chestplate",color:"gold"},{text:" and ",color:"gray"},{text:"Red Dragon Wings",color:"gold"},{text:"!",color:"gray"}]
