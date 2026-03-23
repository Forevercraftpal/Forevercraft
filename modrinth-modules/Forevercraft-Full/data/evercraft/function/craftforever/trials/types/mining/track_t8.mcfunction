# T8: Precision — mine ONLY gold ore, penalize other ore mining
# Score = gold mined - (other ore mined × 2)

# Gold delta
scoreboard players operation @s ec.tt_score = @s ec.tt_s_gold
scoreboard players operation @s ec.tt_score += @s ec.tt_s_dgold
scoreboard players operation @s ec.tt_score -= @s ec.tt_snap

# Non-gold ore penalty
scoreboard players operation #tt_penalty ec.var = @s ec.tt_s_iron
scoreboard players operation #tt_penalty ec.var += @s ec.tt_s_diron
scoreboard players operation #tt_penalty ec.var += @s ec.tt_s_cop
scoreboard players operation #tt_penalty ec.var += @s ec.tt_s_dcop
scoreboard players operation #tt_penalty ec.var += @s ec.tt_s_lapis
scoreboard players operation #tt_penalty ec.var += @s ec.tt_s_dlapis
scoreboard players operation #tt_penalty ec.var -= @s ec.tt_snap2
# Double the penalty
scoreboard players operation #tt_penalty ec.var += #tt_penalty ec.var
scoreboard players operation @s ec.tt_score -= #tt_penalty ec.var

# Floor at 0
execute if score @s ec.tt_score matches ..-1 run scoreboard players set @s ec.tt_score 0
