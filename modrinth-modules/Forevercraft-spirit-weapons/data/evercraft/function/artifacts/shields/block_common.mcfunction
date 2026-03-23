# Shield Block — Common: Shield Brace
# Absorbs a small hit after a successful block
effect give @s absorption 4 0 false
execute at @s run particle enchant ~ ~1 ~ 0.3 0.5 0.3 0.3 8
playsound minecraft:item.shield.block master @s ~ ~ ~ 0.6 1.4
