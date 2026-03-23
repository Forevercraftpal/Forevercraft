# Forging Result: ROUGH — Success but lower quality
tellraw @s [{text:"[Forge] ",color:"gray"},{text:"Rough work, but it holds together.",color:"yellow"}]
playsound minecraft:block.anvil.use master @s ~ ~ ~ 1.0 1.0
execute at @s run particle minecraft:electric_spark ~ ~1 ~ 0.3 0.3 0.3 0.02 10

# Give output based on recipe
function evercraft:craftforever/forging/materials/give_output
