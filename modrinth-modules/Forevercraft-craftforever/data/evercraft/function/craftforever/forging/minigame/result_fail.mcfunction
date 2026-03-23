# Forging Result: FAIL — Produce Slag
tellraw @s [{text:"[Forge] ",color:"dark_gray"},{text:"The material crumbled \u2014 Slag produced.",color:"red"}]
playsound minecraft:entity.item.break master @s ~ ~ ~ 0.8 0.8
execute at @s run particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0.02 20

# Give slag
loot give @s loot evercraft:craftforever/materials/slag
