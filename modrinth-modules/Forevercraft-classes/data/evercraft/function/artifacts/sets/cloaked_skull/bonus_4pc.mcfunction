# Cloaked Skull 4-Piece Bonus: Necromancer — Resistance I + Strength I
execute unless entity @s[tag=cloaked_skull_4pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Cloaked Skull 4pc: ",color:"dark_gray"},{text:"Necromancer — Resistance I + Strength I",color:"gray"}]
tag @s add cloaked_skull_4pc
execute unless score @s ec.h_resist matches 2.. run effect give @s resistance 3 0 false
execute unless score @s ec.h_str matches 2.. run effect give @s strength 3 0 false
particle soul ~ ~1 ~ 0.5 0.5 0.5 0.01 3 force @s
