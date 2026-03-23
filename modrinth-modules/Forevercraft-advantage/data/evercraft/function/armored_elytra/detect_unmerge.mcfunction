# Armored Elytra — Detect Unmerge
# Runs as armored elytra item entity on/above a beacon
# Route to set-specific unmerge based on artifact_set

execute if data entity @s Item.components."minecraft:custom_data"{artifact_set:"dragonmaster"} run function evercraft:armored_elytra/unmerge/dragonmaster
execute if data entity @s Item.components."minecraft:custom_data"{artifact_set:"titan"} run function evercraft:armored_elytra/unmerge/titan
execute if data entity @s Item.components."minecraft:custom_data"{artifact_set:"verdant"} run function evercraft:armored_elytra/unmerge/verdant
execute if data entity @s Item.components."minecraft:custom_data"{artifact_set:"ender_dragon"} run function evercraft:armored_elytra/unmerge/ender_dragon
execute if data entity @s Item.components."minecraft:custom_data"{artifact_set:"infernal"} run function evercraft:armored_elytra/unmerge/infernal
execute if data entity @s Item.components."minecraft:custom_data"{artifact_set:"journey"} run function evercraft:armored_elytra/unmerge/journey
execute if data entity @s Item.components."minecraft:custom_data"{artifact_set:"splendid"} run function evercraft:armored_elytra/unmerge/splendid
