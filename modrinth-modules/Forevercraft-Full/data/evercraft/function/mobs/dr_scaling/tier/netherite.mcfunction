# DR 40 — Netherite armor + netherite weapons
# Enchant levels: 30-40

# Armor
item replace entity @s armor.head with minecraft:netherite_helmet
item replace entity @s armor.chest with minecraft:netherite_chestplate
item replace entity @s armor.legs with minecraft:netherite_leggings
item replace entity @s armor.feet with minecraft:netherite_boots

# Enchant armor (90% chance per piece)
execute if predicate {"condition":"minecraft:random_chance","chance":0.9} run item modify entity @s armor.head evercraft:mobs/enchant_with_levels
execute if predicate {"condition":"minecraft:random_chance","chance":0.9} run item modify entity @s armor.chest evercraft:mobs/enchant_with_levels
execute if predicate {"condition":"minecraft:random_chance","chance":0.9} run item modify entity @s armor.legs evercraft:mobs/enchant_with_levels
execute if predicate {"condition":"minecraft:random_chance","chance":0.9} run item modify entity @s armor.feet evercraft:mobs/enchant_with_levels

# Weapon (random netherite sword/axe/spear, enchanted)
loot replace entity @s weapon.mainhand loot evercraft:mobs/dr_scaling/weapon/netherite

# Near-zero drop chances (0.01%)
data modify entity @s drop_chances merge value {head:0.0001F,chest:0.0001F,legs:0.0001F,feet:0.0001F,mainhand:0.0001F}
