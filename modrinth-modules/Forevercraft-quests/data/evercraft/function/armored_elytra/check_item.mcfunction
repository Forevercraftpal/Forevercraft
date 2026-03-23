# Armored Elytra — Check single item entity
# OPT: Tag-gate pattern — each item only gets NBT-checked once
tag @s add ec.ae_checked

# Elytra artifact on beacon (merge)
execute if data entity @s Item{id:"minecraft:elytra",components:{"minecraft:custom_data":{is_artifact:true}}} at @s if block ~ ~ ~ minecraft:beacon run function evercraft:armored_elytra/detect_merge
execute if data entity @s Item{id:"minecraft:elytra",components:{"minecraft:custom_data":{is_artifact:true}}} at @s if block ~ ~-1 ~ minecraft:beacon run function evercraft:armored_elytra/detect_merge

# Armored elytra on stonecutter (unmerge)
execute if data entity @s Item{id:"minecraft:netherite_chestplate",components:{"minecraft:custom_data":{armored_elytra:{armored:true}}}} at @s if block ~ ~ ~ minecraft:stonecutter run function evercraft:armored_elytra/detect_unmerge
execute if data entity @s Item{id:"minecraft:netherite_chestplate",components:{"minecraft:custom_data":{armored_elytra:{armored:true}}}} at @s if block ~ ~-1 ~ minecraft:stonecutter run function evercraft:armored_elytra/detect_unmerge
