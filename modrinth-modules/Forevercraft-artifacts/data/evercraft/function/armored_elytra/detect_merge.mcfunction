# Armored Elytra — Detect Merge
# Runs as elytra item entity on/above a beacon
# Check for matching chestplate nearby (within 2 blocks) and route to set-specific merge

# Dragonmaster
execute if data entity @s Item.components."minecraft:custom_data"{artifact_set:"dragonmaster"} if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:netherite_chestplate",components:{"minecraft:custom_data":{artifact:"dragonmaster_chestplate"}}}}] run function evercraft:armored_elytra/merge/dragonmaster

# Titan
execute if data entity @s Item.components."minecraft:custom_data"{artifact_set:"titan"} if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:netherite_chestplate",components:{"minecraft:custom_data":{artifact:"titan_chestplate"}}}}] run function evercraft:armored_elytra/merge/titan

# Verdant
execute if data entity @s Item.components."minecraft:custom_data"{artifact_set:"verdant"} if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:netherite_chestplate",components:{"minecraft:custom_data":{artifact:"verdant_chestplate"}}}}] run function evercraft:armored_elytra/merge/verdant

# Ender Dragon
execute if data entity @s Item.components."minecraft:custom_data"{artifact_set:"ender_dragon"} if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:netherite_chestplate",components:{"minecraft:custom_data":{artifact:"ender_dragon_chestplate"}}}}] run function evercraft:armored_elytra/merge/ender_dragon

# Infernal
execute if data entity @s Item.components."minecraft:custom_data"{artifact_set:"infernal"} if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:netherite_chestplate",components:{"minecraft:custom_data":{artifact:"infernal_chestplate"}}}}] run function evercraft:armored_elytra/merge/infernal

# Journey
execute if data entity @s Item.components."minecraft:custom_data"{artifact_set:"journey"} if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:netherite_chestplate",components:{"minecraft:custom_data":{artifact:"journey_chestplate"}}}}] run function evercraft:armored_elytra/merge/journey

# Splendid
execute if data entity @s Item.components."minecraft:custom_data"{artifact_set:"splendid"} if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:netherite_chestplate",components:{"minecraft:custom_data":{artifact:"spelunker_chestplate"}}}}] run function evercraft:armored_elytra/merge/splendid
