# DR 10 — Gold armor + stone weapons
# Enchant levels: 10-20

# Armor
item replace entity @s armor.head with minecraft:golden_helmet
item replace entity @s armor.chest with minecraft:golden_chestplate
item replace entity @s armor.legs with minecraft:golden_leggings
item replace entity @s armor.feet with minecraft:golden_boots

# Enchant armor (60% chance per piece)
execute if predicate {"condition":"minecraft:random_chance","chance":0.6} run item modify entity @s armor.head evercraft:mobs/enchant_with_levels
execute if predicate {"condition":"minecraft:random_chance","chance":0.6} run item modify entity @s armor.chest evercraft:mobs/enchant_with_levels
execute if predicate {"condition":"minecraft:random_chance","chance":0.6} run item modify entity @s armor.legs evercraft:mobs/enchant_with_levels
execute if predicate {"condition":"minecraft:random_chance","chance":0.6} run item modify entity @s armor.feet evercraft:mobs/enchant_with_levels

# Weapon (random stone sword/axe/spear, enchanted)
loot replace entity @s weapon.mainhand loot evercraft:mobs/dr_scaling/weapon/stone

# Low drop chances
data modify entity @s drop_chances merge value {head:0.05F,chest:0.05F,legs:0.05F,feet:0.05F,mainhand:0.05F}
