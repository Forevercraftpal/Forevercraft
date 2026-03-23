# Auto-smelt: raw_gold → gold_ingot
# FIX #6: Modify item ID in-place instead of kill+summon
data modify entity @s Item.id set value "minecraft:gold_ingot"
particle flame ~ ~0.3 ~ 0.1 0.1 0.1 0.02 3
