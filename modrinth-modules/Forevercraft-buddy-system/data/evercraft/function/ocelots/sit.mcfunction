# Tamable Ocelot — Sit
# Runs as the ocelot. Freezes in place.

scoreboard players set @s ocelot.sitting 1
data modify entity @s NoAI set value 1b

particle minecraft:note ~ ~0.5 ~ 0 0 0 0 1
tellraw @p [{"text":"[","color":"dark_gray"},{"text":"Ocelot","color":"#C4A000"},{"text":"] ","color":"dark_gray"},{"text":"Your ocelot is now sitting.","color":"gray"}]
