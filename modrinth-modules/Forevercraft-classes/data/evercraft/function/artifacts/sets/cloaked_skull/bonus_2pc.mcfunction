# Cloaked Skull 2-Piece Bonus: Death's Embrace — Resistance I
execute unless entity @s[tag=cloaked_skull_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Cloaked Skull 2pc: ",color:"dark_gray"},{text:"Death's Embrace — Resistance I",color:"gray"}]
tag @s add cloaked_skull_2pc
execute unless score @s ec.h_resist matches 2.. run effect give @s resistance 3 0 false
