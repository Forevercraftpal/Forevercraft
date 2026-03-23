# Tomb System — Store Inventory, Equipment, and XP
# @s = player who died (keepInventory ON, items still present)
# Copies everything to evercraft:tomb_temp storage for transfer to grave marker

# Store main inventory (hotbar + slots 0-35, does NOT include armor/offhand in 1.21.5+)
data modify storage evercraft:tomb_temp Inventory set from entity @s Inventory

# Store equipment separately (armor + offhand — split from Inventory in 1.21.5+)
data modify storage evercraft:tomb_temp Equipment set from entity @s equipment

# Store XP level
execute store result storage evercraft:tomb_temp XP int 1 run xp query @s levels
