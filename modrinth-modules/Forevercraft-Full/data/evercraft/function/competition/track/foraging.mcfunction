# Competition Track — Foraging Frenzy (delta-tracking)
# Current stat - baseline = event score
scoreboard players operation @s ec.comp_score = @s ach.forages_done
scoreboard players operation @s ec.comp_score -= @s ec.comp_baseline
# Mark as participant
execute if score @s ec.comp_score matches 1.. run scoreboard players set @s ec.comp_today 1
