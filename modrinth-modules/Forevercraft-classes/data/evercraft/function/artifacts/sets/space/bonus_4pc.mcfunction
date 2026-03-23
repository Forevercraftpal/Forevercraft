# Space 4-Piece Bonus: Cosmic Power — Zero-G + Speed I
execute unless entity @s[tag=space_4pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Space 4pc: ",color:"blue"},{text:"Cosmic Power — Zero-G + Speed I",color:"gray"}]
tag @s add space_4pc
effect give @s slow_falling 3 0 false
execute unless score @s ec.h_jump matches 2.. run effect give @s jump_boost 3 2 false
execute unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false
particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.01 3 force @s
