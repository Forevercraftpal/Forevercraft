# Tomb System — Drop Items from Shattered Grave
# @s = grave marker with ec.tomb_shattering tag
# Spawns all stored inventory items as item entities at grave location

# Copy inventory to temp storage for iteration
data modify storage evercraft:tomb_temp shatter_items set from entity @s data.Inventory

# Drop each inventory item
function evercraft:tomb/shatter_items_loop

# Drop equipment items (armor + offhand) — stored separately since 1.21.5
function evercraft:tomb/shatter_equipment
