# Auto-smelt: raw_iron → iron_ingot
# FIX #6: Run as/at item entity. Store count, replace item ID in-place.
# Instead of kill+summon, just modify the item's ID directly.

data modify entity @s Item.id set value "minecraft:iron_ingot"
particle flame ~ ~0.3 ~ 0.1 0.1 0.1 0.02 3
