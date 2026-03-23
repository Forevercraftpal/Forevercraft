# Competition Track — Fishing Derby+
# Fishing is tracked via on_catch callback (competition/score/fish_catch)
# This tick function just marks participation
execute if score @s ec.comp_score matches 1.. run scoreboard players set @s ec.comp_today 1
