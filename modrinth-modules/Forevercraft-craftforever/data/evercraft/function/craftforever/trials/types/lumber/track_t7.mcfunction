# T7: Chop 64 logs and replant — compute delta from snapshot (all log types)
scoreboard players operation @s ec.tt_score = @s ec.tt_s_oaklog
scoreboard players operation @s ec.tt_score += @s ec.tt_s_sprlog
scoreboard players operation @s ec.tt_score += @s ec.tt_s_birlog
scoreboard players operation @s ec.tt_score += @s ec.tt_s_junlog
scoreboard players operation @s ec.tt_score += @s ec.tt_s_acalog
scoreboard players operation @s ec.tt_score += @s ec.tt_s_drklog
scoreboard players operation @s ec.tt_score += @s ec.tt_s_mnglog
scoreboard players operation @s ec.tt_score += @s ec.tt_s_chrlog
scoreboard players operation @s ec.tt_score -= @s ec.tt_snap
