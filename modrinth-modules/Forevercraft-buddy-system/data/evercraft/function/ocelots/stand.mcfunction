# Tamable Ocelot — Stand
# Runs as the ocelot. Resumes following.

scoreboard players set @s ocelot.sitting 0
data modify entity @s NoAI set value 0b

# Re-apply Strength I (NoAI toggle may clear effects)
effect give @s strength infinite 0 true

particle minecraft:note ~ ~0.5 ~ 0 0 0 0 1
tellraw @p [{"text":"[","color":"dark_gray"},{"text":"Ocelot","color":"#C4A000"},{"text":"] ","color":"dark_gray"},{"text":"Your ocelot is now following.","color":"gray"}]
