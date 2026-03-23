# Space 2-Piece Bonus: Zero-G — Slow Falling + Jump Boost III
execute unless entity @s[tag=space_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Space 2pc: ",color:"blue"},{text:"Zero-G — Slow Falling + Jump Boost III",color:"gray"}]
tag @s add space_2pc
effect give @s slow_falling 3 0 false
execute unless score @s ec.h_jump matches 2.. run effect give @s jump_boost 3 2 false
