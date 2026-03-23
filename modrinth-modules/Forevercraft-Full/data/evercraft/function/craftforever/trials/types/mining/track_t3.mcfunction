# T3: Mine 16 gold ore — compute delta
scoreboard players operation @s ec.tt_score = @s ec.tt_s_gold
scoreboard players operation @s ec.tt_score += @s ec.tt_s_dgold
scoreboard players operation @s ec.tt_score -= @s ec.tt_snap
