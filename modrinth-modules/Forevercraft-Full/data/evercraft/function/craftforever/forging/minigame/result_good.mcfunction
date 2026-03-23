# Forging Result: GOOD — Solid work
tellraw @s [{text:"[Forge] ",color:"green"},{text:"Well forged! A fine creation.",color:"yellow"}]
playsound minecraft:block.anvil.use master @s ~ ~ ~ 1.0 0.8
execute at @s run particle minecraft:electric_spark ~ ~1 ~ 0.3 0.3 0.3 0.03 20

# Give output
function evercraft:craftforever/forging/materials/give_output
