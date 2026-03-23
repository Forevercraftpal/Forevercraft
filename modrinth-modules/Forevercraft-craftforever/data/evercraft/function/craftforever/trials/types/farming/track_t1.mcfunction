# T1: Harvest 64 wheat — compute delta from snapshot
# Current wheat - snapshot = wheat harvested during trial
scoreboard players operation @s ec.tt_score = @s ec.tt_s_wheat
scoreboard players operation @s ec.tt_score -= @s ec.tt_snap
