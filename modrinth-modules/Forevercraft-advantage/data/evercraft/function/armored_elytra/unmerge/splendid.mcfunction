# Armored Elytra Unmerge — Splendid

data modify storage evercraft:armored_elytra merged_enchants set from entity @s Item.components."minecraft:enchantments"
data modify storage evercraft:armored_elytra merged_trim set from entity @s Item.components."minecraft:trim"

kill @s

loot spawn ~ ~1 ~ loot evercraft:artifacts/mythical/spelunker_elytra
loot spawn ~ ~1 ~ loot evercraft:artifacts/mythical/spelunker_chestplate

function evercraft:armored_elytra/effects

tellraw @a[distance=..64] [{text:"[",color:"dark_gray"},{text:"Forevercraft",color:"gold",bold:true},{text:"] ",color:"dark_gray"},{text:"Armored Amethyst Elytra",color:"gold"},{text:" has been separated back into ",color:"gray"},{text:"Splendid Chestplate",color:"gold"},{text:" and ",color:"gray"},{text:"Amethyst Elytra",color:"gold"},{text:"!",color:"gray"}]
