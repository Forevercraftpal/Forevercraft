# T1: Mine 64 stone/variants — compute delta from snapshot
# Current total - snapshot = blocks mined during trial
scoreboard players operation @s ec.tt_score = @s ec.tt_s_stone
scoreboard players operation @s ec.tt_score += @s ec.tt_s_dslate
scoreboard players operation @s ec.tt_score += @s ec.tt_s_dior
scoreboard players operation @s ec.tt_score += @s ec.tt_s_gran
scoreboard players operation @s ec.tt_score += @s ec.tt_s_ande
scoreboard players operation @s ec.tt_score -= @s ec.tt_snap
