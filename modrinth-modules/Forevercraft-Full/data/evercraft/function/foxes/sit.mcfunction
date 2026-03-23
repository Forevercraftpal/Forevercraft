# Tamable Fox — Sit
# Runs as the fox. Freezes in place.

scoreboard players set @s fox.sitting 1
data modify entity @s NoAI set value 1b

particle minecraft:note ~ ~0.5 ~ 0 0 0 0 1
tellraw @p [{"text":"[","color":"dark_gray"},{"text":"Fox","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Your fox is now sitting.","color":"gray"}]
