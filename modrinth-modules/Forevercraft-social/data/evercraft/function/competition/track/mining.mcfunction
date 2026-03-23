# Competition Track — Mining Rush (delta-tracking)
# Current stat - baseline = event score
scoreboard players operation @s ec.comp_score = @s adv.stat_mine
scoreboard players operation @s ec.comp_score -= @s ec.comp_baseline
# Mark as participant
execute if score @s ec.comp_score matches 1.. run scoreboard players set @s ec.comp_today 1
