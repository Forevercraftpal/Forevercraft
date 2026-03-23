# Tomb System — Restore Inventory from Grave Marker
# @s = player receiving items
# ec.tomb_collecting tag on the source marker
# Spawns items as item entities with instant pickup — preserves ALL item data perfectly
# Items may not return to exact original slots, but all components/custom data are intact

# Copy marker's stored inventory to temp storage for iteration
data modify storage evercraft:tomb_temp restore_items set from entity @e[type=marker,tag=ec.tomb_collecting,limit=1] data.Inventory

# Restore each inventory item via item entity spawn loop
function evercraft:tomb/collect_inventory_loop

# Restore equipment (armor + offhand) via item entity spawns
function evercraft:tomb/collect_equipment
