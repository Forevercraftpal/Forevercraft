# Tamable Fox — Stand
# Runs as the fox. Resumes following.

scoreboard players set @s fox.sitting 0
data modify entity @s NoAI set value 0b

particle minecraft:note ~ ~0.5 ~ 0 0 0 0 1
tellraw @p [{"text":"[","color":"dark_gray"},{"text":"Fox","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Your fox is now following.","color":"gray"}]
