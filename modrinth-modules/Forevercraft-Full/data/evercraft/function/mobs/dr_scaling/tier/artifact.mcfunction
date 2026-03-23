# DR 50 — Netherite armor + chance of artifact weapon
# Enchant levels: 30-40

# Armor (same as DR 40 — full netherite)
item replace entity @s armor.head with minecraft:netherite_helmet
item replace entity @s armor.chest with minecraft:netherite_chestplate
item replace entity @s armor.legs with minecraft:netherite_leggings
item replace entity @s armor.feet with minecraft:netherite_boots

# Enchant all armor (100% at this tier)
item modify entity @s armor.head evercraft:mobs/enchant_with_levels
item modify entity @s armor.chest evercraft:mobs/enchant_with_levels
item modify entity @s armor.legs evercraft:mobs/enchant_with_levels
item modify entity @s armor.feet evercraft:mobs/enchant_with_levels

# 20% chance: artifact weapon (never drops), 80% chance: netherite weapon
execute if predicate {"condition":"minecraft:random_chance","chance":0.2} run loot replace entity @s weapon.mainhand loot evercraft:mobs/dr_scaling/weapon/artifact
execute unless items entity @s weapon.mainhand *[custom_data~{is_artifact:1b}] run loot replace entity @s weapon.mainhand loot evercraft:mobs/dr_scaling/weapon/netherite

# Near-zero drop chances — artifact weapons NEVER drop, armor/weapons almost impossible (0.1%)
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:1b}] run data modify entity @s drop_chances merge value {head:0.001F,chest:0.001F,legs:0.001F,feet:0.001F,mainhand:0.0F}
execute unless items entity @s weapon.mainhand *[custom_data~{is_artifact:1b}] run data modify entity @s drop_chances merge value {head:0.001F,chest:0.001F,legs:0.001F,feet:0.001F,mainhand:0.001F}
