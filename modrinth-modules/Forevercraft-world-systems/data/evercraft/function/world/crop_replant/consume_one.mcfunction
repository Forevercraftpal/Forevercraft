# Crop Seed Auto-Replant — Consume one seed from the item stack
# Run as item entity at its position
# Handles multi-count stacks (e.g., 3 carrots → plant 1, keep 2)

particle minecraft:happy_villager ~ ~1.5 ~ 0.2 0.2 0.2 0 5
playsound minecraft:item.crop.plant ambient @a[distance=..16] ~ ~ ~ 0.5 1.2

# Get current count
execute store result score #seed_count ec.temp run data get entity @s Item.count

# If only 1 item, kill the entity
execute if score #seed_count ec.temp matches 1 run kill @s
execute if score #seed_count ec.temp matches 1 run return 0

# More than 1: decrement count by 1
scoreboard players remove #seed_count ec.temp 1
execute store result entity @s Item.count int 1 run scoreboard players get #seed_count ec.temp
