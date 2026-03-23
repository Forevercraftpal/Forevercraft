# Competition Track — Forging Championship
# Forging is tracked via advancement callback (competition/score/forge_item)
# This tick function just marks participation
execute if score @s ec.comp_score matches 1.. run scoreboard players set @s ec.comp_today 1
