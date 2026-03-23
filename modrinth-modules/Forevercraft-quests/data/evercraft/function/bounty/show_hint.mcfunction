# Bounty — Display directional hint with biome flavor
# Macro: flavor (biome description), direction (cardinal/intercardinal or "nearby")

$tellraw @s [{text:"  ",color:"gold"},{text:"You hear $(flavor) from $(direction), make haste before it's too late!",color:"yellow",italic:true}]
