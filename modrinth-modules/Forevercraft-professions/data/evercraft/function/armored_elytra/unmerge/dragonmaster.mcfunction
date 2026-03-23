# Armored Elytra Unmerge — Dragonmaster
# Runs as the armored elytra item entity on a beacon

# Store enchantments for redistribution
data modify storage evercraft:armored_elytra merged_enchants set from entity @s Item.components."minecraft:enchantments"
data modify storage evercraft:armored_elytra merged_trim set from entity @s Item.components."minecraft:trim"

# Kill the merged item
kill @s

# Drop both original items on the ground
loot spawn ~ ~1 ~ loot evercraft:artifacts/mythical/dragonmaster_elytra
loot spawn ~ ~1 ~ loot evercraft:artifacts/mythical/dragonmaster_chestplate

# Effects
function evercraft:armored_elytra/effects

# Announcement
tellraw @a[distance=..64] [{text:"[",color:"dark_gray"},{text:"Forevercraft",color:"gold",bold:true},{text:"] ",color:"dark_gray"},{text:"Armored Dragonmaster Wings",color:"gold"},{text:" have been separated back into ",color:"gray"},{text:"Dragonmaster Chestplate",color:"gold"},{text:" and ",color:"gray"},{text:"Dragonmaster Wings",color:"gold"},{text:"!",color:"gray"}]
