# Artisan Forge — Give Output Item based on recipe
# Recipe 1: → Tempered Alloy
# Recipe 2: → Starforged Ingot
# Recipe 3: → Dreamwrought Bar
# Recipe 4: → Eternal Essence
# Recipe 5: → Soulbound Core

execute if score @s ec.cf_recipe matches 1 run loot give @s loot evercraft:craftforever/materials/tempered_alloy
execute if score @s ec.cf_recipe matches 2 run loot give @s loot evercraft:craftforever/materials/starforged_ingot
execute if score @s ec.cf_recipe matches 3 run loot give @s loot evercraft:craftforever/materials/dreamwrought_bar
execute if score @s ec.cf_recipe matches 4 run loot give @s loot evercraft:craftforever/materials/eternal_essence
execute if score @s ec.cf_recipe matches 5 run loot give @s loot evercraft:craftforever/materials/soulbound_core
