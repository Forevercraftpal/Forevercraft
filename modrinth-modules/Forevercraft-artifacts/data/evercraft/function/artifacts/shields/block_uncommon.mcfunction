# Shield Block — Uncommon: Quick Recovery
# Burst of speed after blocking to reposition
effect give @s speed 3 0 false
execute at @s run particle cloud ~ ~0.5 ~ 0.3 0.2 0.3 0.02 6
playsound minecraft:item.shield.block master @s ~ ~ ~ 0.7 1.3
