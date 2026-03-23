# Netherite Core trigger handler
# Routes ec.ncore trigger values to configuration functions
# Run as player

execute if score @s ec.ncore matches 1 run function evercraft:artifacts/netherite_core/set_primary_1
execute if score @s ec.ncore matches 2 run function evercraft:artifacts/netherite_core/set_primary_2
execute if score @s ec.ncore matches 3 run function evercraft:artifacts/netherite_core/set_primary_3
execute if score @s ec.ncore matches 4 run function evercraft:artifacts/netherite_core/set_primary_4
execute if score @s ec.ncore matches 5 run function evercraft:artifacts/netherite_core/set_primary_5
execute if score @s ec.ncore matches 6 run function evercraft:artifacts/netherite_core/set_secondary_6
execute if score @s ec.ncore matches 7 run function evercraft:artifacts/netherite_core/set_secondary_primary
