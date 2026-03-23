# Guild Expedition — Initialize player baselines
# @s = guild member at expedition start

scoreboard players set @s ec.gexp_contrib 0
scoreboard players operation @s ec.gexp_kill_base = @s ec.gd_mobkills
