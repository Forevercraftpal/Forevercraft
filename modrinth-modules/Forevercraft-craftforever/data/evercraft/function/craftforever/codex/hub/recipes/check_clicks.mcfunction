# Recipes Section — Click detection
# Run as player

# Page 1 (overview): detect sub-tab clicks
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.RecipesClick1,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/recipes/click_cookbook
execute if score @s ec.cf_codex_page matches 1 as @e[type=interaction,tag=CF.RecipesClick2,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/recipes/click_recipebook

# Page 3 (recipe book): detect recipe row clicks
execute if score @s ec.cf_codex_page matches 3 as @e[type=interaction,tag=CF.RecipeRow1,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/recipes/click_recipe
execute if score @s ec.cf_codex_page matches 3 as @e[type=interaction,tag=CF.RecipeRow2,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/recipes/click_recipe
execute if score @s ec.cf_codex_page matches 3 as @e[type=interaction,tag=CF.RecipeRow3,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/recipes/click_recipe
execute if score @s ec.cf_codex_page matches 3 as @e[type=interaction,tag=CF.RecipeRow4,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/recipes/click_recipe
execute if score @s ec.cf_codex_page matches 3 as @e[type=interaction,tag=CF.RecipeRow5,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/recipes/click_recipe
