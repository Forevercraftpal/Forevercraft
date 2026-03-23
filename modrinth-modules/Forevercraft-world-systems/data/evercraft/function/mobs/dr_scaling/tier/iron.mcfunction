# DR 20 — Iron armor + iron weapons
# Enchant levels: 20-30

# Armor
item replace entity @s armor.head with minecraft:iron_helmet
item replace entity @s armor.chest with minecraft:iron_chestplate
item replace entity @s armor.legs with minecraft:iron_leggings
item replace entity @s armor.feet with minecraft:iron_boots

# Enchant armor (70% chance per piece)
execute if predicate {"condition":"minecraft:random_chance","chance":0.7} run item modify entity @s armor.head evercraft:mobs/enchant_with_levels
execute if predicate {"condition":"minecraft:random_chance","chance":0.7} run item modify entity @s armor.chest evercraft:mobs/enchant_with_levels
execute if predicate {"condition":"minecraft:random_chance","chance":0.7} run item modify entity @s armor.legs evercraft:mobs/enchant_with_levels
execute if predicate {"condition":"minecraft:random_chance","chance":0.7} run item modify entity @s armor.feet evercraft:mobs/enchant_with_levels

# Weapon (random iron sword/axe/spear, enchanted)
loot replace entity @s weapon.mainhand loot evercraft:mobs/dr_scaling/weapon/iron

# Low drop chances
data modify entity @s drop_chances merge value {head:0.05F,chest:0.05F,legs:0.05F,feet:0.05F,mainhand:0.05F}
