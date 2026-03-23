# Competition Track — Cooking Contest
# Cooking is tracked via advancement callback (competition/score/cook_item)
# This tick function just marks participation
execute if score @s ec.comp_score matches 1.. run scoreboard players set @s ec.comp_today 1
