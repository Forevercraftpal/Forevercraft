# DR 30 — Diamond armor + diamond weapons
# Enchant levels: 25-35

# Armor
item replace entity @s armor.head with minecraft:diamond_helmet
item replace entity @s armor.chest with minecraft:diamond_chestplate
item replace entity @s armor.legs with minecraft:diamond_leggings
item replace entity @s armor.feet with minecraft:diamond_boots

# Enchant armor (80% chance per piece)
execute if predicate {"condition":"minecraft:random_chance","chance":0.8} run item modify entity @s armor.head evercraft:mobs/enchant_with_levels
execute if predicate {"condition":"minecraft:random_chance","chance":0.8} run item modify entity @s armor.chest evercraft:mobs/enchant_with_levels
execute if predicate {"condition":"minecraft:random_chance","chance":0.8} run item modify entity @s armor.legs evercraft:mobs/enchant_with_levels
execute if predicate {"condition":"minecraft:random_chance","chance":0.8} run item modify entity @s armor.feet evercraft:mobs/enchant_with_levels

# Weapon (random diamond sword/axe/spear, enchanted)
loot replace entity @s weapon.mainhand loot evercraft:mobs/dr_scaling/weapon/diamond

# Very low drop chances (0.1%)
data modify entity @s drop_chances merge value {head:0.001F,chest:0.001F,legs:0.001F,feet:0.001F,mainhand:0.001F}
